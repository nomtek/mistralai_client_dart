# Changelog

## 1.1.0

- Generate new client code based on [Mistral OAS](https://github.com/mistralai/platform-docs-public/commit/89abfa4879279981adde99e23c0cda8153da6eef#diff-d910ba2ef878f7db0223a966b81c8b3f3b65027bb39e4431bb05140171eece39R2722)
- New feature: Moderation ([docs](https://docs.mistral.ai/capabilities/guardrailing/)). Check [example](example/mistralai_client_moderation_example.dart) for usage.
- New feature: Batch Inference ([docs](https://docs.mistral.ai/capabilities/batch/)). Check [example](example/mistral_client_batch_inference_example.dart) for usage.
- New function: `downloadFile` to download files from Mistral AI
- BREAKING CHANGE: `ModelCard` was replaced by `UnionModelCard` to support `BaseModelCard` and `FTModelCard`

## 1.0.0

- Support newest [Mistral OAS](https://github.com/mistralai/platform-docs-public/commit/2f2868013495c8b332c987be3c8c945204a544d4)

BREAKING CHANGES:

- client code is generated from the OpenAPI specification
- for changes in the API see examples in the example directory

## 0.3.0

- New feature: Fine-tuning ([docs](https://docs.mistral.ai/capabilities/finetuning/)). Check [example](example/mistralai_client_jobs_example.dart) for usage.

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
