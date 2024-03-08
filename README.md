# Mistral AI client for Dart

[![.github/workflows/check.yaml](https://github.com/nomtek/mistralai_client_dart/actions/workflows/check.yaml/badge.svg)](https://github.com/nomtek/mistralai_client_dart/actions/workflows/check.yaml)
[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)
![FlutterFlow 4.1](https://img.shields.io/badge/FlutterFlow-4.1-blue)
![Flutter 3.13.7+](https://img.shields.io/badge/Flutter-3.13.7%2B-blue)

## Description

This is an unofficial Dart/Flutter client for the Mistral AI API.

The implementation is inspired by the [official Mistral AI JS client](https://github.com/mistralai/client-js).

## FlutterFlow

This is a special version of the Mistral AI client that supports FlutterFlow 4.1 with Flutter 3.13.7.

## Installation

```shell
dart pub add mistralai_client_dart_flutter_flow
```

## Usage

### Create client

```dart
import 'package:mistralai_client_dart_flutter_flow/mistralai_client_dart.dart';

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
        ChatMessage(role: 'tool', content: functionResult, name: functionName),
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

## Resources

You can check the [official Mistral AI docs](https://docs.mistral.ai/).

## Contributing

For contributing guide please see [CONTRIBUTING.md](CONTRIBUTING.md).
