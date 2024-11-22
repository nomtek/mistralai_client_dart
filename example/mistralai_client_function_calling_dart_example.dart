// ignore_for_file: avoid_print

import 'package:mistralai_client_dart/mistralai_client_dart.dart';

import 'api_key.dart';

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
  const model = 'mistral-large-latest';
  final client = MistralAIClient(apiKey: mistralApiKey);

  const retrievePaymentStatusDefinition = FunctionDefinition(
    name: 'retrievePaymentStatus',
    description: 'Get payment status of a transaction',
    parameters: {
      'type': 'object',
      'properties': {
        'transaction_id': {
          'type': 'string',
          'description': 'The transaction id.',
        },
      },
      'required': ['transaction_id'],
    },
  );

  const retrievePaymentDateDefinition = FunctionDefinition(
    name: 'retrievePaymentDate',
    description: 'Get payment date of a transaction',
    parameters: {
      'type': 'object',
      'properties': {
        'transaction_id': {
          'type': 'string',
          'description': 'The transaction id.',
        },
      },
      'required': ['transaction_id'],
    },
  );
  final allFunctionDefinitions = [
    retrievePaymentStatusDefinition,
    retrievePaymentDateDefinition,
  ];

  final tools = <Tool>[
    for (final function in allFunctionDefinitions) Tool(function: function),
  ];

  final namesToFunctions = {
    retrievePaymentStatusDefinition.name: (String transactionId) =>
        retrievePaymentStatus(paymentStatusData, transactionId),
    retrievePaymentDateDefinition.name: (String transactionId) =>
        retrievePaymentDate(paymentDateData, transactionId),
  };

  final messages = <dynamic>[
    const UserMessage(
      content: "What's the status of my transaction?",
    ),
  ];

  var chatResponse = await client.chatComplete(
    request: ChatCompletionRequest(
      model: model,
      messages: messages,
      tools: tools,
    ),
  );
  print(chatResponse.choices![0].message.content);
  messages
    ..add(chatResponse.choices![0].message)
    ..add(
      const UserMessage(
        content: 'My transaction ID is T1001',
      ),
    );

  chatResponse = await client.chatComplete(
    request: ChatCompletionRequest(
      model: model,
      messages: messages,
      tools: tools,
    ),
  );
  messages.add(chatResponse.choices?[0].message);

  final toolMessages =
      chatResponse.choices?[0].message.toolCalls?.map((toolCall) {
    final functionName = toolCall.function.name;
    final functionParams = toolCall.function.arguments;

    final toolFunction = namesToFunctions[functionName]!;
    final toolFunctionArg = functionParams.mapOrNull(
      map: (args) => args.value['transaction_id'] as String,
    );
    print('calling $functionName(transaction_id: $toolFunctionArg)');
    final functionResult = toolFunction(toolFunctionArg!);
    print('\tresult: $functionResult');
    return ToolMessage(
      content: functionResult,
      name: functionName,
      toolCallId: toolCall.id,
    );
  }).toList();

  if (toolMessages != null) messages.addAll(toolMessages);

  chatResponse = await client.chatComplete(
    request: ChatCompletionRequest(
      model: model,
      messages: messages,
      tools: tools,
    ),
  );

  print(chatResponse.choices?[0].message.content);
}
