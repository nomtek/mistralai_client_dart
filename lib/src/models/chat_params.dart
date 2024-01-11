import 'package:meta/meta.dart';
import 'package:mistralai_client_dart/src/models/chat_completion.dart';

@immutable
class ChatParams {
  const ChatParams({
    required this.model,
    required this.messages,
    required this.temperature,
    required this.topP,
    required this.maxTokens,
    required this.safeMode,
    required this.randomSeed,
  });

  final String model;
  final List<Message> messages;
  final double temperature;
  final int topP;
  final int maxTokens;
  final bool safeMode;
  final dynamic randomSeed;
}
