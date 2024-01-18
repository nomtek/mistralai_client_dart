import 'package:http/http.dart' as http;
import 'package:mistralai_client_dart/mistralai_client_dart.dart';

// http client is required to force setting mocked http client
// to not make real http requests
MistralAIClient mistralAIClientOf({
  required http.Client? client,
  String apiKey = 'apiKey',
  String baseUrl = 'https://example.api.mistral.ai',
  Duration timeout = const Duration(milliseconds: 500),
  int maxRetries = 5,
  MistralAIUrlFactory? apiUrlFactory,
}) =>
    MistralAIClient(
      apiKey: apiKey,
      baseUrl: baseUrl,
      timeout: timeout,
      client: client,
      maxRetries: maxRetries,
      apiUrlFactory: apiUrlFactory,
    );
