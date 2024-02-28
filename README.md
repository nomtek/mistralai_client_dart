# Mistral AI client for Dart

[![.github/workflows/check.yaml](https://github.com/nomtek/mistralai_client_dart/actions/workflows/check.yaml/badge.svg)](https://github.com/nomtek/mistralai_client_dart/actions/workflows/check.yaml)
[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)

## Description

This is an unofficial Dart/Flutter client for the Mistral AI API.

The implementation is inspired by the [official Mistral AI JS client](https://github.com/mistralai/client-js).

## Overview (current state)

The package is supporting Mistral AI API (0.0.1) at the moment.

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

## Resources

You can check the [official Mistral AI docs](https://docs.mistral.ai/).

## Contributing

For contributing guide please see [CONTRIBUTING.md](CONTRIBUTING.md).
