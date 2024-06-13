// ignore_for_file: avoid_print

import 'dart:io';

import 'package:mistralai_client_dart/mistralai_client_dart.dart';
import 'package:mistralai_client_dart/src/models/jobs.dart';

void main() async {
  const apiKey = 'your api key here';
  final client = MistralAIClient(apiKey: apiKey);

  // Create a new file
  final file = File('example/fine-tuning-file.jsonl');
  final createdFile = await client.files.create(file: file);
  print(createdFile);

  // Create a new job
  final createdJob = await client.jobs.create(
    model: 'open-mistral-7b',
    trainingFiles: [createdFile.id],
    validationFiles: [],
    hyperparameters: const TrainingParameters(
      trainingSteps: 10,
      learningRate: 0.0001,
    ),
  );
  print(createdJob);

  // List jobs
  final jobs = await client.jobs.list();
  print(jobs);

  // Retrieve a job
  final retrievedJob = await client.jobs.retrieve(jobId: createdJob.id);
  print(retrievedJob);

  // Cancel a job
  final canceledJob = await client.jobs.cancel(jobId: createdJob.id);
  print(canceledJob);
}
