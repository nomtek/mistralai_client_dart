import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;

/// Downloads OpenAPI spec from the given URL and compares it with the original.
void main(List<String> args) async {
  var arguments = args.toList();
  if (arguments.isEmpty) {
    // fallback to the default URL
    arguments = ['https://docs.mistral.ai/redocusaurus/plugin-redoc-0.yaml'];
  }
  final uri = Uri.tryParse(arguments[0]);
  if (uri == null) {
    throw ArgumentError('Invalid URI: $uri');
  }

  final response = await http.get(uri);
  if (response.statusCode != 200) {
    throw Exception('Failed to download OpenAPI spec: ${response.body}');
  }

  // TODO(lgawron): make the name to not clash with existing files
  final file = File(uri.pathSegments.last);
  if (file.existsSync()) {
    file.deleteSync();
  }

  // create tmp file
  await file.writeAsString(response.body);

  final isSpecUpdated = await areFilesDifferent(
    'plugin-redoc-0-0.0.2-original.yaml',
    file.path,
  );
  if (isSpecUpdated) {
    log('OpenAPI spec has been updated');
    // TODO(lgawron): figure out strategy for updating the spec
    // renaming files, updating the version, etc.
  } else {
    // remove file to not leave any traces
    file.deleteSync();
  }
}

Future<bool> areFilesDifferent(String path1, String path2) async {
  final file1 = await File(path1).readAsBytes();
  final file2 = await File(path2).readAsBytes();
  final areEqual = const ListEquality<int>().equals(file1, file2);
  return !areEqual;
}

void log(Object message) {
  // ignore: avoid_print
  print(message);
}
