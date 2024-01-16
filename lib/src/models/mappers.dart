import 'package:mistralai_client_dart/src/models/chat_completion.dart';
import 'package:mistralai_client_dart/src/models/chat_params.dart';

// TODO(mgruchala): Add unit tests for this

ChatCompletionParams mapChatParamsToRequestParams(
  ChatParams params, {
  required bool stream,
}) =>
    ChatCompletionParams(
      model: params.model,
      messages: params.messages,
      temperature: params.temperature,
      topP: params.topP,
      maxTokens: params.maxTokens,
      stream: stream,
      safeMode: params.safeMode,
      randomSeed: params.randomSeed,
    );
