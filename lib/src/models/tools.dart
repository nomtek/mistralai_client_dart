import 'package:meta/meta.dart';

import 'package:mistralai_client_dart/src/models/chat_params.dart';

/// Type safe implementation of the function tool used when making chat calls
@immutable
class ToolsFunction {
  const ToolsFunction({
    required this.name,
    required this.description,
    required this.parameters,
  });

  final String name;
  final String description;
  final List<ToolsFunctionParameter> parameters;

  /// Use this to create a map compatible with the [ChatParams.tools] format
  Map<String, Object> toChatParamsFormat() {
    final map = {
      'type': 'function',
      'function': {
        'name': name,
        'description': description,
        'parameters': {
          'type': 'object',
          'properties': Map.fromEntries(
            parameters.map(
              (property) => MapEntry(property.name, {
                'type': property.type,
                'description': property.description,
              }),
            ),
          ),
          'required': parameters
              .map((e) => e.isRequired ? e.name : null)
              .whereType<String>()
              .toList(),
        },
      },
    };

    return map;
  }

  @override
  String toString() => 'ToolsFunction{name: $name, description: $description, '
      'parameters: $parameters';
}

/// Type safe implementation of a function parameter used in [ToolsFunction].
@immutable
class ToolsFunctionParameter {
  const ToolsFunctionParameter({
    required this.name,
    required this.type,
    required this.description,
    required this.isRequired,
  });

  final String name;
  final String type;
  final String description;
  final bool isRequired;

  @override
  String toString() =>
      'ToolsFunctionParametersProperty{name: $name, type: $type, '
      'description: $description, isRequired: $isRequired';
}
