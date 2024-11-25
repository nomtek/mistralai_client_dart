# Mistral AI client for Dart

[![.github/workflows/check.yaml](https://github.com/nomtek/mistralai_client_dart/actions/workflows/check.yaml/badge.svg)](https://github.com/nomtek/mistralai_client_dart/actions/workflows/check.yaml)
[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)

## Description

This is an unofficial Dart/Flutter client for the Mistral AI API.

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
final modelsResult = await client.listMistralModels();
final models = modelsResult?.map((e) {
  if (e.baseModel != null) {
    return e.baseModel?.id;
  } else {
    return e.fineTunedModel?.id;
  }
}).toList();
print(models?.join(', '));
```

### Chat

```dart
const request = ChatCompletionRequest(
  model: 'mistral-small-latest',
  messages: [
    UserMessage(content: UserMessageContent.string('Hello chat!')),
  ],
);
final chatCompletion = await client.chatComplete(request: request);
final chatMessage = chatCompletion.choices?[0].message;
print(chatMessage?.content);
```

### Chat stream

```dart
final stream = client.chatStream(request: request);
await for (final completionChunk in stream) {
  final chatMessage = completionChunk.choices[0].delta.content;
  if (chatMessage != null) {
    print(chatMessage);
  }
}
```

### Embeddings

```dart
final embeddings = await client.createEmbeddings(
  request: const EmbeddingRequest(
    model: 'mistral-embed',
    input: EmbeddingRequestInput.arrayString(['Hello chat!']),
  ),
);
for (final data in embeddings.data) {
  print('Embeddings: ${data.embedding}');
}
```

### Function calling

Check examples:

- [Function calling example](example/mistralai_client_function_calling_dart_example.dart)

### Files

Check examples:

- [Files example](example/mistralai_client_files_example.dart)

### Fine-tuning Jobs

Check examples:

- [Fine-tuning jobs example](example/mistralai_client_jobs_example.dart)

### Fill in the middle completion

Check examples:

- [FIM completion example](example/fim_completion_example.dart)
- [FIM completion stream example](example/fim_completion_stream_example.dart)

### Agents

Check examples:

- [Agents example](example/agents_example.dart)

### Moderation

Check examples:

- [Moderation example](example/mistralai_client_moderation_example.dart)

## Resources

You can check the [official Mistral AI docs](https://docs.mistral.ai/).

## Contributing

For contributing guide please see [CONTRIBUTING.md](CONTRIBUTING.md).

## Flutter Flow (deprecated)

For Flutter Flow integration please use the [mistralai_client_dart_flutter_flow](https://pub.dev/packages/mistralai_client_dart_flutter_flow) package.

It's a version of this package that is adapted to work with Flutter Flow.

## Aknowledgements

Part of the code was generated thx to [openapi_spec](https://pub.dev/packages/openapi_spec) package.
