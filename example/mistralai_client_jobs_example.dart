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

  // Create a new job
  final createdJob = await client.createFineTuningJob(
    request: JobIn(
      model: FineTuneableModel.openMistral7b,
      trainingFiles: [TrainingFile(fileId: createdFile.id)],
      validationFiles: [],
      hyperparameters: const TrainingParametersIn(
        trainingSteps: 10,
      ),
    ),
  );
  print(createdJob);

  // List jobs
  final jobs = await client.getFineTuningJobs();
  print(jobs);

  // Retrieve a job
  final retrievedJob = await client.getFineTuningJob(jobId: createdJob.id);
  print(retrievedJob);

  // Cancel a job
  final canceledJob = await client.cancelFineTuningJob(jobId: createdJob.id);
  print(canceledJob);
}
