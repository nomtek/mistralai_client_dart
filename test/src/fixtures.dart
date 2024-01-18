import 'package:http/http.dart' as http;
import 'package:mistralai_client_dart/mistralai_client_dart.dart';

// http client is required to force setting mocked http client
// to not make real http requests
MistralAIClient mistralAIClientOf({
  required http.Client? client,
  String apiKey = 'apiKey',
  String baseUrl = MistralAPIEndpoints.baseUrl,
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

const chatCompletionResultJsonString = '''
{
  "id": "cmpl-e5cc70bb28c444948073e77776eb30ef",
  "object": "chat.completion",
  "created": 1702256327,
  "model": "mistral-tiny",
  "choices": [
    {
      "index": 0,
      "message": {
        "role": "assistant",
        "content": "I don't have a favorite condiment as I don't consume food or condiments. However, I can tell you that many people enjoy using ketchup, mayonnaise, hot sauce, soy sauce, or mustard as condiments to enhance the flavor of their meals. Some people also enjoy using herbs, spices, or vinegars as condiments. Ultimately, the best condiment is a matter of personal preference."
      },
      "finish_reason": "stop"
    }
  ],
  "usage": {
    "prompt_tokens": 14,
    "completion_tokens": 93,
    "total_tokens": 107
  }
}
''';

const chatCompletionInvalidResultJsonString = '''
{
  "object": "chat.completion",
  "created": 1702256327,
  "model": "mistral-tiny",
  "choices": [
    {
      "index": 0,
      "message": {
        "role": "assistant",
        "content": "I don't have a favorite condiment as I don't consume food or condiments. However, I can tell you that many people enjoy using ketchup, mayonnaise, hot sauce, soy sauce, or mustard as condiments to enhance the flavor of their meals. Some people also enjoy using herbs, spices, or vinegars as condiments. Ultimately, the best condiment is a matter of personal preference."
      },
      "finish_reason": "stop"
    }
  ],
  "usage": {
    "prompt_tokens": 14,
    "completion_tokens": 93,
    "total_tokens": 107
  }
}
''';

const chatCompletionMalformedResultJsonString = '''
{
  "id": "cmpl-e5cc70bb28c444948073e77776eb30ef",
  "object": "chat.completion",
  "created": 1702256327,
  "model": "mistral-tiny",
  "choices": 
    {
      "index": 0,
      "message": {
        "role": "assistant",
        "content": "I don't have a favorite condiment as I don't consume food or condiments. However, I can tell you that many people enjoy using ketchup, mayonnaise, hot sauce, soy sauce, or mustard as condiments to enhance the flavor of their meals. Some people also enjoy using herbs, spices, or vinegars as condiments. Ultimately, the best condiment is a matter of personal preference."
      },
      "finish_reason": "stop"
    }
  ],
  "usage": {
    "prompt_tokens": 14,
    "completion_tokens": 93,
    "total_tokens": 107
  }
}
''';

const chatCompletionChunkResultJsonString =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-tiny","choices":[{"index":0,"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';

// missing '[' after 'choices: ' in the response
const chatCompletionChunkResultMalformedJsonString =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-tiny","choices":{"index":0,"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';

// missing 'index' field in the response
const chatCompletionChunkResultInvalidJsonString =
    '''data: {"id":"cmpl-e5cc70bb28c444948073e77776eb30ef","object":"chat.completion.chunk","created":1702256327,"model":"mistral-tiny","choices":[{"delta":{"content":"Hello streamed chat completion!"},"finish_reason":"stop","usage":{"prompt_tokens":14,"completion_tokens":93,"total_tokens":107}}]}''';
