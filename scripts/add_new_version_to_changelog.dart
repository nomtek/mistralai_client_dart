import 'dart:io';

String incrementVersion(String version) {
  final parts = version.split('.');
  final patch = int.parse(parts[2]) + 1;
  return '${parts[0]}.${parts[1]}.$patch';
}

Future<void> addNewChangelogSection(String filePath, String newChanges) async {
  final file = File(filePath);
  var content = await file.readAsString();

  // Find the latest version
  final versionExp = RegExp(r'## (\d+\.\d+\.\d+)');
  final Match? latestVersionMatch = versionExp.firstMatch(content);
  if (latestVersionMatch == null) {
    throw Exception('No version found in the changelog.');
  }

  final latestVersion = latestVersionMatch.group(1)!;
  final newVersion = incrementVersion(latestVersion);

  // Create new changelog section
  final newSection = '## $newVersion\n\n$newChanges\n\n';

  // Insert new section at the top after the first heading
  content =
      content.replaceFirst('# Changelog\n\n', '# Changelog\n\n$newSection');

  await file.writeAsString(content);
}

void main() {
  const newChanges =
      '- New feature: Example feature\n- Improvement: Example improvement';
  addNewChangelogSection('CHANGELOG.md', newChanges);
}
