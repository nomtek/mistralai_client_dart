// ignore_for_file: avoid_print

import 'package:mistralai_client_dart/mistralai_client_dart.dart';

import 'api_key.dart';

Future<void> main() async {
  final client = MistralAIClient(apiKey: mistralApiKey);

  // raw text moderation
  const rawTextClassificationRequest = ClassificationRequest(
    input: ClassificationRequestInput.string(
      'Invest in our revolutionary cryptocurrency today'
      ' and secure a guaranteed 300% return within the'
      ' first week! This once-in-a-lifetime opportunity is'
      ' backed by cutting-edge technology and an elite team of investors.'
      ' Sign up now—no prior knowledge or experience required! Act fast,'
      ' as spots are limited!',
    ),
    model: 'mistral-moderation-latest',
  );

  final rawTextModerationResponse =
      await client.moderations(request: rawTextClassificationRequest);
  final classificationObject = rawTextModerationResponse.results?.first;

  print(classificationObject);
  // raw text moderation
  const conversationClassificationRequest = ClassificationRequest(
    input: ClassificationRequestInput.arrayString(
      [
        // ignore: no_adjacent_strings_in_list
        'Invest in our revolutionary cryptocurrency today'
            ' and secure a guaranteed 300% return within the'
            ' first week! This once-in-a-lifetime opportunity is'
            ' backed by cutting-edge technology and an elite team of investors.'
            ' Sign up now—no prior knowledge or experience required! Act fast,'
            ' as spots are limited!',
        'How can I Invest in your cryptocurrency?',
      ],
    ),
    model: 'mistral-moderation-latest',
  );

  final conversationModerationResponse =
      await client.moderations(request: conversationClassificationRequest);

  final classificationObjects = conversationModerationResponse.results ?? [];
  for (final classificationObject in classificationObjects) {
    print(classificationObject);
  }
}
