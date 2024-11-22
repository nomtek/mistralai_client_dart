// ignore_for_file: avoid_print

import 'package:mistralai_client_dart/mistralai_client_dart.dart';

import 'api_key.dart';

void main() async {
  final client = MistralAIClient(apiKey: mistralApiKey);
  const agentId = String.fromEnvironment(
    'EXAMPLE_AGENT_ID',
    defaultValue: 'you-agent-id',
  );

  const agentCompleteRequest = AgentsCompletionRequest(
    agentId: agentId,
    messages: [
      UserMessage(
        content: 'What is the best French cheese?',
      ),
    ],
  );

  // agent complete without streaming
  final response = await client.agentsComplete(
    request: agentCompleteRequest,
  );
  print(response.choices?[0].message.content);

  // agent complete with streaming
  final stream = client.agentsStream(request: agentCompleteRequest);
  await for (final completionChunk in stream) {
    final message = completionChunk.choices[0].delta.content;
    if (message != null) {
      print(message);
    }
  }
}
