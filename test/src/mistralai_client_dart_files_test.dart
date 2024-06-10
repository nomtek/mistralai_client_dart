import 'dart:io';

import 'package:mistralai_client_dart/src/models/files.dart';
import 'package:test/test.dart';

import 'fakes.dart';
import 'fixtures.dart';

void main() {
  group('MistralAIClient files test', () {
    test(
        'calling create file '
        'should result in file object creation', () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
        responseBody: fileResponsePayload,
      );
      final mistralClient = mistralAIClientOf(httpClient: mockHttpClient);
      final file = File('test/src/resources/file.jsonl');

      // when
      final fileObject = await mistralClient.files.create(file: file);

      // then
      _assertFileObjectIsProperlyParsed(fileObject);
    });

    test(
        'calling retrieve file '
        'should result in file object retrieval', () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
        responseBody: fileResponsePayload,
      );
      final mistralClient = mistralAIClientOf(httpClient: mockHttpClient);

      // when
      final fileObject = await mistralClient.files.retrieve(fileId: 'fileId');

      // then
      _assertFileObjectIsProperlyParsed(fileObject);
    });

    test(
        'calling list files '
        'should result in files list retrieval', () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
        responseBody: filesResponsePayload,
      );
      final mistralClient = mistralAIClientOf(httpClient: mockHttpClient);

      // when
      final fileObjects = await mistralClient.files.list();

      // then
      expect(fileObjects.data.length, equals(1));
      _assertFileObjectIsProperlyParsed(fileObjects.data.first);
    });

    test(
        'calling delete file '
        'should result in file deletion', () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
        responseBody: fileDeletedResponsePayload,
      );
      final mistralClient = mistralAIClientOf(httpClient: mockHttpClient);

      // when
      final result = await mistralClient.files.delete(fileId: 'fileId');

      // then
      expect(result.id, equals('fileId'));
      expect(result.object, equals('file'));
      expect(result.deleted, equals(true));
    });
  });
}

void _assertFileObjectIsProperlyParsed(FileObject fileObject) {
  expect(fileObject.id, equals('fileId'));
  expect(fileObject.object, equals('file'));
  expect(fileObject.bytes, equals(0));
  expect(fileObject.filename, equals('file.jsonl'));
  expect(fileObject.purpose, equals(Purpose.fineTune));
}

// test data
const fileResponsePayload = '''
{
    "id": "fileId",
    "object": "file",
    "bytes": 0,
    "created_at": 1633046400000,
    "filename": "file.jsonl",
    "purpose": "fine-tune"
}
''';

const filesResponsePayload = '''
{
    "data": [
      {
        "id": "fileId",
        "object": "file",
        "bytes": 0,
        "created_at": 1633046400000,
        "filename": "file.jsonl",
        "purpose": "fine-tune"
      }
    ],
    "object": "list"
}
''';

const fileDeletedResponsePayload = '''
{
    "id": "fileId",
    "object": "file",
    "deleted": true
}
''';
