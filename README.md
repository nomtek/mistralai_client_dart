# Mistral AI client for Dart

[![.github/workflows/check.yaml](https://github.com/nomtek/mistralai_client_dart/actions/workflows/check.yaml/badge.svg)](https://github.com/nomtek/mistralai_client_dart/actions/workflows/check.yaml)
[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)

## Description

This is an unofficial Dart/Flutter client for the Mistral AI API.

The implementation is inspired by the [official Mistral AI JS client](https://github.com/mistralai/client-js).

## Flutter Flow

For Flutter Flow integration please use the [mistralai_client_dart_flutter_flow](https://pub.dev/packages/mistralai_client_dart_flutter_flow) package.

It's a version of this package that is adapted to work with Flutter Flow.

## Installation

```shell
dart pub add mistralai_client_dart
```

## Usage

### Create client

```dart
import 'package:mistralai_client_dart/mistralai_client_dart.dart';

final client = MistralAIClient(apiKey: 'your api key here');
```

### List models

```dart
final modelsResult = await client.listModels();
final models = modelsResult.data.map((e) => e.id).toList();
print(models.join(', '));
```

### Chat

```dart
final params = ChatParams(
  model: 'mistral-small-latest',
  messages: const [
    ChatMessage(role: 'user', content: 'Hello chat!'),
  ],
);
final chatCompletion = await client.chat(params);
final chatMessage = chatCompletion.choices[0].message;
print(chatMessage);
```

### Chat stream

```dart
final stream = client.streamChat(params);
await for (final completionChunk in stream) {
  final chatMessage = completionChunk.choices[0].delta?.content;
  if (chatMessage != null) {
    print(chatMessage);
  }
}
```

### Embeddings

```dart
final embeddings = await client.embeddings(
  const EmbeddingParams(
    model: 'mistral-embed',
    input: ['Hello chat!'],
  ),
);
for (final data in embeddings.data) {
  print(data.embedding);
}
```

### Function calling

```dart
String retrievePaymentStatus(Map<String, String> data, String transactionId) =>
    '{"status": ${data[transactionId]}}';

final namesToFunctions = {
  'retrievePaymentStatus': (String transactionId) =>
      retrievePaymentStatus(paymentStatusData, transactionId),
};

final tools = [
  const ToolsFunction(
    name: 'retrievePaymentStatus',
    description: 'Get payment status of a transaction',
    parameters: [
      ToolsFunctionParameter(
        name: 'transactionId',
        type: 'string',
        description: 'The transaction ID',
        isRequired: true,
      ),
    ],
  ).toChatParamsFormat(),
];

var chatResponse = await client.chat(
    ChatParams(
        model: 'mistral-large-latest',
        messages: messages,
        tools: tools,
        toolChoice: 'auto',
    ),
);

final toolCall = chatResponse.choices[0].message.toolCalls?[0];
if (toolCall != null && toolCall.type == 'function') {
  final functionName = toolCall.function!.name;
  final functionParams = toolCall.function!.argumentsMap;

  print('calling functionName: $functionName');
  print('functionParams: $functionParams');

  final functionResult = namesToFunctions[functionName]!(
      functionParams['transactionId']! as String,
  );

  messages.add(
    ChatMessage(
      role: 'tool',
      content: functionResult,
      name: functionName,
      toolCallId: toolCall.id,
    ),
  );

  chatResponse = await client.chat(
      ChatParams(
          model: model,
          messages: messages,
          tools: tools,
          toolChoice: 'auto',
      ),
  );

  print(chatResponse.choices[0].message.content);
}
```

### Fill in the middle completion

Check examples:

- [FIM completion example](example/fim_completion_example.dart)
- [FIM completion stream example](example/fim_completion_stream_example.dart)

## Resources

You can check the [official Mistral AI docs](https://docs.mistral.ai/).

## Contributing

For contributing guide please see [CONTRIBUTING.md](CONTRIBUTING.md).
