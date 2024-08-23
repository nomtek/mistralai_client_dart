import 'package:mistralai_client_dart/mistralai_client_dart.dart';

import 'api_key.dart';

void main() async {
  final client = MistralAIClient(apiKey: mistralApiKey);

  final response = await client.agentsComplete(
    request: const AgentsCompletionRequest(
      agentId: 'your-french-speaking-agent-id',
      messages: [
        UserMessage(
          content: UserMessageContent.string('What is the best French cheese?'),
        ),
      ],
    ),
  );

  // ignore: avoid_print
  print(response.choices?[0].message.content);
}
