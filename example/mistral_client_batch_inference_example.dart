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
  print('Created file: ${createdFile.id} \n');
  print(createdFile);

  final createdBatchJob = await client.createBatchJob(
    request: BatchJobIn(
      model: 'mistral-small-latest',
      endpoint: ApiEndpoint.v1ChatCompletions,
      inputFiles: [createdFile.id],
      metadata: {'job_type': 'testing'},
    ),
  );
  print('Created job: ${createdBatchJob.id}');
  print(createdBatchJob);

  final retrieveJob = await client.getBatchJob(jobId: createdBatchJob.id);
  print('Retrieved job: ${retrieveJob.id}');
  print(retrieveJob);

  final listJobs = await client.getBatchJobs();
  print('List of jobs:');
  print(listJobs);

  final cancelJob = await client.cancelBatchJob(jobId: createdBatchJob.id);
  print('Cancelled job: ${cancelJob.id}');
  print(cancelJob);
}
