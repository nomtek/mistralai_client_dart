import 'package:http/http.dart' as http;
import 'package:mistralai_client_dart/mistralai_client_dart.dart';

// http client is required to force setting mocked http client
// to not make real http requests
MistralAIClient mistralAIClientOf({
  required http.Client httpClient,
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
      httpClient: httpClient,
      maxRetries: maxRetries,
      apiUrlFactory: apiUrlFactory,
    );

// creates ChatMessage with default values for tests
ChatMessage chatMessageOf({
  String? role,
  String? content,
  String? name,
  List<ToolCall>? toolCalls,
}) =>
    ChatMessage(
      role: role ?? 'role',
      content: content ?? 'content',
      name: name ?? 'name',
      toolCalls: toolCalls,
    );

// creates ChatParams with default values for tests
ChatParams chatParamsOf({
  String? model,
  List<ChatMessage>? messages,
  double? temperature,
  double? topP,
  int? maxTokens,
  bool? safePrompt,
  int? randomSeed,
}) =>
    ChatParams(
      model: model ?? 'model',
      messages: messages ?? [chatMessageOf()],
      temperature: temperature,
      topP: topP,
      maxTokens: maxTokens,
      safePrompt: safePrompt,
      randomSeed: randomSeed,
    );

// creates EmbeddingParams with default values for tests
EmbeddingParams embeddingParamsOf({
  String model = 'mistral-embed',
  List<String> input = const ['Hello', 'world'],
  String encodingFormat = 'float',
}) =>
    EmbeddingParams(
      model: model,
      input: input,
      encodingFormat: encodingFormat,
    );

FimParams fimParamsOf({
  String prompt = 'void main() {',
  String model = 'code-model',
  String? suffix,
  double? temperature,
  int? maxTokens,
  double? topP,
  int? randomSeed,
  List<String>? stop,
}) =>
    FimParams(
      model: model,
      prompt: prompt,
      suffix: suffix,
      temperature: temperature,
      maxTokens: maxTokens,
      topP: topP,
      randomSeed: randomSeed,
      stop: stop,
    );
