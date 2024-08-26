// ignore_for_file: avoid_print

import 'dart:io';

import 'package:http/http.dart';
import 'package:mistralai_client_dart/mistralai_client_dart.dart';

import 'api_key.dart';

void main() async {
  final client = MistralAIClient(apiKey: mistralApiKey);

  // Create a new file
  final file = File('example/fine-tuning-file.jsonl');
  final createdFile = await client.uploadFile(
    request: [
      MultipartFile.fromBytes(
        'file',
        file.readAsBytesSync(),
        filename: file.path,
      ),
    ],
  );
  print(createdFile);

  // List files
  final files = await client.listFiles();
  print(files);

  // Retrieve a file
  final retrievedFile = await client.retrieveFile(fileId: createdFile.id);
  print(retrievedFile);

  // Delete a file
  final deletedFile = await client.deleteFile(fileId: createdFile.id);
  print(deletedFile);
}
