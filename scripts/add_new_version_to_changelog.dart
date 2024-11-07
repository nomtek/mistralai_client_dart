import 'dart:io';

String incrementVersion(String version) {
  List<String> parts = version.split('.');
  int patch = int.parse(parts[2]) + 1;
  return '${parts[0]}.${parts[1]}.$patch';
}

void addNewChangelogSection(String filePath, String newChanges) async {
  File file = File(filePath);
  String content = await file.readAsString();

  // Find the latest version
  RegExp versionExp = RegExp(r'## (\d+\.\d+\.\d+)');
  Match? latestVersionMatch = versionExp.firstMatch(content);
  if (latestVersionMatch == null) {
    throw Exception('No version found in the changelog.');
  }

  String latestVersion = latestVersionMatch.group(1)!;
  String newVersion = incrementVersion(latestVersion);

  // Create new changelog section
  String newSection = '## $newVersion\n\n$newChanges\n\n';

  // Insert new section at the top after the first heading
  content =
      content.replaceFirst('# Changelog\n\n', '# Changelog\n\n$newSection');

  await file.writeAsString(content);
}

void main() {
  String newChanges =
      '- New feature: Example feature\n- Improvement: Example improvement';
  addNewChangelogSection('CHANGELOG.md', newChanges);
}
