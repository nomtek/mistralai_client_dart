part of '../mistralai_client_dart_base.dart';

ChatCompletionParams _mapChatParamsToRequestParams(
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
