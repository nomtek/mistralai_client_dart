import 'dart:async';
import 'dart:convert';

import 'package:mistralai_client_dart/src/generated/client.dart' as generated;
import 'package:mistralai_client_dart/src/generated/schema/schema.dart';

/// Mistral AI Client enables to connect with [Mistral AI API](https://docs.mistral.ai/api/)
class MistralAIClient extends generated.MistralaiClientDartClient {
  /// Creates a new instance of [MistralAIClient].
  MistralAIClient({
    required String apiKey,
    super.baseUrl,
    super.client,
    super.headers,
    super.queryParams,
  }) : super(bearerToken: apiKey);

  Stream<CompletionChunk> chatStream(
    ChatCompletionRequest request,
  ) async* {
    final streamRequest = await makeRequestStream(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/chat/completions',
      method: generated.HttpMethod.post,
      requestType: 'application/json',
      responseType: 'text/event-stream',
      body: request.copyWith(stream: true),
    );

    yield* streamRequest.stream
        .transform(const _MistralAIStreamTransformer())
        .map(
      (response) {
        final json = jsonDecode(response);
        final decodedResponse =
            CompletionChunk.fromJson(json as Map<String, dynamic>);
        return decodedResponse.copyWith(
          choices: _fixStreamChoices(decodedResponse.choices),
        );
      },
    );
  }

  @override
  Future<ChatCompletionResponse> chatComplete({
    required ChatCompletionRequest request,
  }) async {
    final response = await super.chatComplete(request: request);
    final fixedChoices = _fixChoices(response.choices);
    return response.copyWith(choices: fixedChoices);
  }

  @override
  Future<FIMCompletionResponse> fimComplete({
    required FIMCompletionRequest request,
  }) async {
    final response = await super.fimComplete(request: request);
    final fixedChoices = _fixChoices(response.choices);
    return response.copyWith(choices: fixedChoices);
  }

  Stream<CompletionChunk> fimStream(
    FIMCompletionRequest request,
  ) async* {
    final streamRequest = await makeRequestStream(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/fim/completions',
      method: generated.HttpMethod.post,
      requestType: 'application/json',
      responseType: 'text/event-stream',
      body: request.copyWith(stream: true),
    );

    yield* streamRequest.stream
        .transform(const _MistralAIStreamTransformer())
        .map(
      (response) {
        final json = jsonDecode(response);
        final decodedResponse =
            CompletionChunk.fromJson(json as Map<String, dynamic>);
        return decodedResponse.copyWith(
          choices: _fixStreamChoices(decodedResponse.choices),
        );
      },
    );
  }


  // START: Fix arguments of ToolCalls that are not parsed correctly
  //
  // Fix arguments that are not parsed correctly
  // Generator uses `Arguments` class which is a freezed Union
  // but the response doesn't contain `runtimeType` field
  // (default for freezed unions).

  List<ChatCompletionChoice>? _fixChoices(List<ChatCompletionChoice>? choices) {
    return choices
        ?.map(
          (choice) => choice.copyWith(
            message: choice.message.copyWith(
              toolCalls: _fixToolCalls(choice.message.toolCalls),
            ),
          ),
        )
        .toList();
  }

  List<CompletionResponseStreamChoice> _fixStreamChoices(
    List<CompletionResponseStreamChoice> choices,
  ) {
    return choices
        .map(
          (choice) => choice.copyWith(
            delta: choice.delta.copyWith(
              toolCalls: _fixToolCalls(choice.delta.toolCalls),
            ),
          ),
        )
        .toList();
  }

  List<ToolCall>? _fixToolCalls(List<ToolCall>? toolCalls) {
    return toolCalls?.map((toolCall) {
      return toolCall.copyWith(
        function: toolCall.function.copyWith(
          arguments: _fixArguments(toolCall.function.arguments),
        ),
      );
    }).toList();
  }

  Arguments _fixArguments(Arguments arguments) {
    return arguments.map<Arguments>(
      map: (map) => map,
      string: (string) {
        try {
          return Arguments.map(
            jsonDecode(string.value) as Map<String, dynamic>,
          );
        } catch (e) {
          return string;
        }
      },
    );
  }

  // END: Fix arguments of ToolCalls that are not parsed correctly

  /// Creates a new fine-tuning job.
  ///
  /// For more information see [createFineTuningJobRaw].
  Future<JobOut> createFineTuningJob({required JobIn request}) async {
    final response = await createFineTuningJobRaw(request: request);
    return JobOut.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  }

  /// Version of [createFineTuningJob] that returns only metadata
  /// (without the creating the actual job).
  ///
  /// For more information see [createFineTuningJobRaw]
  Future<LegacyJobMetadataOut> createFineTuningJobDryRun({
    required JobIn request,
  }) async {
    final response = await createFineTuningJobRaw(
      dryRun: true,
      request: request,
    );
    return LegacyJobMetadataOut.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  }
}

class _MistralAIStreamTransformer
    extends StreamTransformerBase<List<int>, String> {
  const _MistralAIStreamTransformer();

  @override
  Stream<String> bind(Stream<List<int>> stream) {
    return stream
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .where((line) => line.startsWith('data: '))
        .where((line) => !line.endsWith('[DONE]'))
        .map((item) => item.substring(6));
  }
}
