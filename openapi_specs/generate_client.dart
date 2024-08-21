import 'dart:io';

import 'package:openapi_spec/openapi_spec.dart';

void main(List<String> args) async {
  final arguments = args.toList();
  assert(
    () {
      arguments.add('plugin-redoc-0-0.0.2-oas-3.0.3-adjusted.yaml');
      return true;
    }(),
    '',
  );
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
          log('methodName: $methodName');
          return methodName;
        },
      ),
      schemaOptions: SchemaGeneratorOptions(
        singleFile: true,
        onSchemaName: (schemaName) {
          log('schemaName: $schemaName');
          return schemaName;
        },
        onSchemaPropertyName: (propertyName) {
          log('propertyName: $propertyName');
          return propertyName;
        },
        onSchemaUnionKey: (unionKey, subKeys) {
          log('unionKey: $unionKey, subKeys: ${subKeys.join(',')}');
          return unionKey;
        },
        onSchemaUnionName: (unionName, subNames) {
          log('unionName: $unionName, subNames: ${subNames.join(',')}');
          if (['JobOut', 'LegacyJobMetadataOut'] == subNames) {
            return 'JobOutUnion';
          }
          return unionName;
        },
      ),
    );
    await Process.run(
      'dart',
      ['pub', 'run', 'build_runner', 'build', '-d'],
    );

    // fix analysis problems in generated code
    final clientFile = File('${destination}client.dart');
    final clientContent = clientFile.readAsStringSync();
    final updatedClientContent = clientContent.replaceAll(
      '_jsonDecode(r)',
      '_jsonDecode(r) as Map<String, dynamic>',
    );
    clientFile.writeAsStringSync(updatedClientContent);
  } catch (e) {
    log('Failed to generate client: $e');
  }
}

void log(Object message) {
  // ignore: avoid_print
  print(message);
}
