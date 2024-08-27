import 'dart:io';
import 'package:http/http.dart' as http;

/// Downloads OpenAPI spec from the given URL and compares it with the original.
/// If the spec has been updated, it will be copied to the original file.
void main(List<String> args) async {
  var arguments = args.toList();
  if (arguments.isEmpty) {
    // fallback to the default URL
    arguments = [
      'https://raw.githubusercontent.com/mistralai/platform-docs-public/main/openapi.yaml',
    ];
  }
  final uri = Uri.tryParse(arguments[0]);
  if (uri == null) {
    throw ArgumentError('Invalid URI: $uri');
  }

  final response = await http.get(uri);
  if (response.statusCode != 200) {
    throw Exception('Failed to download OpenAPI spec: ${response.body}');
  }

  final downloadedSpecFile = File('openapi_specs/openapi-downloaded.yaml');
  final originalSpecFile = File('openapi_specs/openapi-original.yaml');
  if (downloadedSpecFile.existsSync()) {
    downloadedSpecFile.deleteSync();
  }

  // create tmp file
  await downloadedSpecFile.writeAsString(response.body);

  final isSpecUpdated = await areFilesDifferent(
    originalSpecFile.path,
    downloadedSpecFile.path,
  );
  try {
    if (isSpecUpdated) {
      log('OpenAPI spec has been updated');
      await downloadedSpecFile.copy(originalSpecFile.path);
    } else {
      log('OpenAPI spec is up to date');
    }
  } finally {
    // remove file to not leave any traces
    downloadedSpecFile.deleteSync();
  }
}

Future<bool> areFilesDifferent(String path1, String path2) async {
  final file1 = await File(path1).readAsBytes();
  final file2 = await File(path2).readAsBytes();
  final areEqual = listEquals(file1, file2);
  return !areEqual;
}

bool listEquals<T>(List<T>? a, List<T>? b) {
  if (a == null) {
    return b == null;
  }
  if (b == null || a.length != b.length) {
    return false;
  }
  if (identical(a, b)) {
    return true;
  }
  for (var index = 0; index < a.length; index += 1) {
    if (a[index] != b[index]) {
      return false;
    }
  }
  return true;
}

void log(Object message) {
  // ignore: avoid_print
  print(message);
}
