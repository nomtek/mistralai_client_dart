# Changelog

## 0.2.0

- New feature: Fill in the middle completion ([docs](https://docs.mistral.ai/capabilities/code_generation/)). Check [example](example/fim_completion_example.dart) for usage.
- Add `toolCallId` as mandatory parameter to [ChatMessage](lib/src/models/chat_completion.dart) when role is `tool`.

## 0.1.2

- No longer send `null` values in the request body.

## 0.1.1

- Update README.md with mention about FlutterFlow support.

## 0.1.0

- Add Function Calling functionality to `chat` and `chatStream`
- Add support for `responseFormat` parameter to `ChatParams`
- Update examples to not use deprecated models (like `mistral-tiny`)

## 0.0.2

- Add topics for better [pub.dev](https://pub.dev/) search
- Update description in [pubspec.yaml](pubspec.yaml)

## 0.0.1

- Initial version of Mistral AI client for Dart
- Supports Mistral AI API version 0.0.1
