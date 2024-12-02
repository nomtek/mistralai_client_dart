// ignore_for_file: avoid_print

import 'package:mistralai_client_dart/mistralai_client_dart.dart';

import 'api_key.dart';

Future<void> main() async {
  final client = MistralAIClient(apiKey: mistralApiKey);

  const financialMessage = 'Invest in our revolutionary cryptocurrency today'
      ' and secure a guaranteed 300% return within the'
      ' first week! This once-in-a-lifetime opportunity is'
      ' backed by cutting-edge technology and an elite team of investors.'
      ' Sign up now—no prior knowledge or experience required! Act fast,'
      ' as spots are limited!';

  // raw text moderation
  const rawTextClassificationRequest = ClassificationRequest(
    input: ClassificationRequestInput.string(
      financialMessage,
    ),
    model: 'mistral-moderation-latest',
  );

  final rawTextModerationResponse =
      await client.moderations(request: rawTextClassificationRequest);
  final classificationObject = rawTextModerationResponse.results?.first;

  print(classificationObject);

  // chat text moderation
  const conversationClassificationRequest = ChatClassificationRequest(
    input: Input.array(
      [
        [
          AssistantMessage(
            content: AssistantMessageContent.string(
              financialMessage,
            ),
          ),
          UserMessage(
            content: UserMessageContent.string(
              'How can I Invest in your cryptocurrency?',
            ),
          ),
        ],
      ],
    ),
    model: 'mistral-moderation-latest',
  );

  final conversationModerationResponse =
      await client.chatModerations(request: conversationClassificationRequest);

  print(conversationModerationResponse);
}
