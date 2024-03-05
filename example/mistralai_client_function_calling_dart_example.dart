// ignore_for_file: avoid_print

import 'package:mistralai_client_dart/mistralai_client_dart.dart';

const paymentStatusData = {
  'T1001': 'Paid',
  'T1002': 'Unpaid',
  'T1003': 'Pending',
  'T1004': 'Paid',
};

const paymentDateData = {
  'T1001': '2021-10-05',
  'T1002': '2021-10-06',
  'T1003': '2021-10-07',
  'T1004': '2021-10-05',
};

String retrievePaymentStatus(
  Map<String, String> data,
  String transactionId,
) {
  if (data.keys.contains(transactionId)) {
    return '{"status": ${data[transactionId]}}';
  }
  return '{"error": "transaction ID not found"}';
}

String retrievePaymentDate(
  Map<String, String> data,
  String transactionId,
) {
  if (data.keys.contains(transactionId)) {
    return '{"date": ${data[transactionId]}}';
  }
  return '{"error": "transaction ID not found"}';
}

void main() async {
  const apiKey = 'your api key here';
  const model = 'mistral-large-latest';
  final client = MistralAIClient(apiKey: apiKey);

  final tools = [
    const ToolsFunction(
      name: 'retrievePaymentStatus',
      description: 'Get payment status of a transaction',
      parameters: [
        ToolsFunctionParameter(
          name: 'transactionId',
          type: 'string',
          description: 'The transaction ID',
          isRequired: true,
        ),
      ],
    ).toChatParamsFormat(),
    const ToolsFunction(
      name: 'retrievePaymentDate',
      description: 'Get payment date of a transaction',
      parameters: [
        ToolsFunctionParameter(
          name: 'transactionId',
          type: 'string',
          description: 'The transaction ID',
          isRequired: true,
        ),
      ],
    ).toChatParamsFormat(),
  ];

  final namesToFunctions = {
    'retrievePaymentStatus': (String transactionId) =>
        retrievePaymentStatus(paymentStatusData, transactionId),
    'retrievePaymentDate': (String transactionId) =>
        retrievePaymentDate(paymentDateData, transactionId),
  };

  final messages = [
    const ChatMessage(
      role: 'user',
      content: "What's the status of my transaction?",
    ),
  ];

  var chatResponse = await client.chat(
    ChatParams(
      model: model,
      messages: messages,
      tools: tools,
      toolChoice: 'auto',
    ),
  );
  print(chatResponse.choices[0].message.content);
  messages
    ..add(chatResponse.choices[0].message)
    ..add(
      const ChatMessage(role: 'user', content: 'My transaction ID is T1001'),
    );

  chatResponse = await client.chat(
    ChatParams(
      model: model,
      messages: messages,
      tools: tools,
      toolChoice: 'auto',
    ),
  );

  // Request to call the function 'retrievePaymentStatus'
  messages.add(chatResponse.choices[0].message);

  final toolCall = chatResponse.choices[0].message.toolCalls![0];
  final functionName = toolCall.function!.name;
  final functionParams = toolCall.function!.argumentsMap;

  print('calling functionName: $functionName');
  print('functionParams: $functionParams');

  final functionResult = namesToFunctions[functionName]!(
    functionParams['transactionId']! as String,
  );

  messages.add(
    ChatMessage(role: 'tool', content: functionResult, name: functionName),
  );

  chatResponse = await client.chat(
    ChatParams(
      model: model,
      messages: messages,
      tools: tools,
      toolChoice: 'auto',
    ),
  );

  print(chatResponse.choices[0].message.content);
}
