import 'dart:io';

import 'package:openapi_spec/openapi_spec.dart';

/// Generates client and schema files from the OpenAPI spec.
/// Pass the path to the OpenAPI spec as an argument if you want to use a
/// custom file. Otherwise, the script will use the default
/// file: `openapi-modified.yaml`.
void main(List<String> args) async {
  var arguments = args.toList();
  if (arguments.isEmpty) {
    // fallback to the default URL
    arguments = [
      'openapi-modified.yaml',
    ];
  }
  if (arguments.isEmpty) {
    throw ArgumentError('Missing required argument: path to OpenAPI spec');
  }
  var path = arguments[0];
  if (!File(path).existsSync()) {
    final newPath = '${Directory.current.path}${Platform.pathSeparator}'
        'openapi_specs${Platform.pathSeparator}$path';
    if (!File(newPath).existsSync()) {
      throw ArgumentError(
        'File not found: $path, current dir: ${Directory.current.path}',
      );
    }
    path = newPath;
  }

  final spec = OpenApi.fromFile(source: path);

  final destination = '${Directory.current.path}/lib/src/generated/';
  Directory(destination).createSync(recursive: true);
  try {
    await spec.generate(
      destination: destination,
      package: 'mistralai_client_dart',
      replace: true,
      clientOptions: ClientGeneratorOptions(
        enabled: true,
        onMethodName: (methodName) {
          log('generating method: $methodName');
          return methodName;
        },
      ),
      schemaOptions: SchemaGeneratorOptions(
        singleFile: true,
        onSchemaName: (schemaName) {
          log('generating schema: $schemaName');
          return schemaName;
        },
        onSchemaUnionName: (unionName, subNames) {
          log('generating union: $unionName, sub types: ${subNames.join(',')}');
          if (unionName == 'UnionModelCard') {
            return 'ModelCard';
          }
          return unionName;
        },
      ),
    );
    log('running build_runner');
    await Process.run(
      'dart',
      ['pub', 'run', 'build_runner', 'build', '-d'],
    );

    log('apply fixes to generated code');
    // fix analysis problems in generated code
    final clientFile = File('${destination}client.dart');
    final clientContent = clientFile.readAsStringSync();
    var updatedClientContent = clientContent.replaceAll(
      '_jsonDecode(r)',
      '_jsonDecode(r) as Map<String, dynamic>',
    );
    updatedClientContent = fixReturnInRetrieveModelMethod(updatedClientContent);
    clientFile.writeAsStringSync(updatedClientContent);
  } catch (e) {
    log('Failed to generate client: $e');
  }

  log('run code formatting');
  await Process.run('dart', ['format', '.']);
}

const noRetrieveModelMethodException =
    'Failed to find retrieveModel method to fix. '
    ' The fix may no longer be up to date.';

String fixReturnInRetrieveModelMethod(String clientContent) {
  final retrieveModelPattern = RegExp(
    r'Future<ModelCard>\s+retrieveModel\(\{\s*required String modelId,\s*\}\)\s+async\s*\{[\s\S]*?^\}',
    multiLine: true,
  );

  var foundMatch = false;

  final updatedContent = clientContent.replaceAllMapped(
    retrieveModelPattern,
    (match) {
      final functionContent = match.group(0);

      if (functionContent == null) {
        throw Exception(noRetrieveModelMethodException);
      }

      foundMatch = true;
      final updatedFunctionContent = functionContent.replaceFirst(
        'return _jsonDecode(r) as Map<String, dynamic>;',
        'return ModelCard.fromJson(_jsonDecode(r) as Map<String, dynamic>);',
      );
      return updatedFunctionContent;
    },
  );

  if (!foundMatch) {
    throw Exception(noRetrieveModelMethodException);
  }

  return updatedContent;
}

void log(Object message) {
  // ignore: avoid_print
  print(message);
}
