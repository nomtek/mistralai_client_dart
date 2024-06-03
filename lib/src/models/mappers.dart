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
      safePrompt: params.safePrompt,
      randomSeed: params.randomSeed,
      tools: params.tools,
      toolChoice: params.toolChoice,
      responseFormat: params.responseFormat,
    );

FimCompletionParams _mapFimParamsToRequestParams(
  FimParams params, {
  required bool stream,
}) =>
    FimCompletionParams(
      model: params.model,
      prompt: params.prompt,
      suffix: params.suffix,
      temperature: params.temperature,
      maxTokens: params.maxTokens,
      topP: params.topP,
      randomSeed: params.randomSeed,
      stop: params.stop,
      stream: stream,
    );
