// ignore_for_file: avoid_print

import 'dart:io';

import 'package:mistralai_client_dart/mistralai_client_dart.dart';

void main() async {
  const apiKey = 'your api key here';
  final client = MistralAIClient(apiKey: apiKey);

  // Create a new file
  final file = File('example/fine-tuning-file.jsonl');
  final createdFile = await client.files.create(file: file);
  print(createdFile);

  // List files
  final files = await client.files.list();
  print(files);

  // Retrieve a file
  final retrievedFile = await client.files.retrieve(fileId: createdFile.id);
  print(retrievedFile);

  // Delete a file
  final deletedFile = await client.files.delete(fileId: createdFile.id);
  print(deletedFile);
}
