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
        return CompletionChunk.fromJson(json as Map<String, dynamic>);
      },
    );
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
        return CompletionChunk.fromJson(json as Map<String, dynamic>);
      },
    );
  }

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
