import 'dart:io';

import 'package:mistralai_client_dart/src/models/files.dart';
import 'package:mistralai_client_dart/src/models/jobs.dart';
import 'package:test/test.dart';

import 'fakes.dart';
import 'fixtures.dart';

void main() {
  group('MistralAIClient jobs test', () {
    test(
        'calling create job '
        'should result in job object creation', () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
        responseBody: jobResponsePayload,
      );
      final mistralClient = mistralAIClientOf(httpClient: mockHttpClient);

      // when
      final job = await mistralClient.jobs.create(
        model: 'mistral-medium',
        trainingFiles: [],
        validationFiles: [],
      );

      // then
      expect(job.id, equals('jobId'));
      expect(job.object, equals('job'));
      expect(job.status, equals(JobStatus.queued));
    });

    test(
        'calling retrieve job '
        'should result in job object retrieval', () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
        responseBody: jobResponsePayload,
      );
      final mistralClient = mistralAIClientOf(httpClient: mockHttpClient);

      // when
      final job = await mistralClient.jobs.retrieve(jobId: 'jobId');

      // then
      expect(job.id, equals('jobId'));
      expect(job.object, equals('job'));
      expect(job.status, equals(JobStatus.queued));
    });

    test(
        'calling list jobs '
        'should result in jobs list retrieval', () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
        responseBody: jobsResponsePayload,
      );
      final mistralClient = mistralAIClientOf(httpClient: mockHttpClient);

      // when
      final jobs = await mistralClient.jobs.list();

      // then
      expect(jobs.data.length, equals(2));
      expect(jobs.data[0].id, equals('jobId1'));
      expect(jobs.data[0].status, equals(JobStatus.queued));
      expect(jobs.data[1].id, equals('jobId2'));
      expect(jobs.data[1].status, equals(JobStatus.running));
    });

    test(
        'calling cancel job '
        'should result in job cancellation', () async {
      // given
      final mockHttpClient = FakeHttpJsonResponseClient(
        responseBody: jobDeletedResponsePayload,
      );
      final mistralClient = mistralAIClientOf(httpClient: mockHttpClient);

      // when
      final result = await mistralClient.jobs.cancel(jobId: 'jobId');

      // then
      expect(result.id, equals('jobId'));
      expect(result.object, equals('job'));
      expect(result.status, equals(JobStatus.cancelled));
    });
  });
}

// test data
const jobResponsePayload = '''
{
    "id": "jobId",
    "hyperparameters": {
      "training_steps": 1800,
      "learning_rate": 1.0e-4
    },
    "fine_tuned_model": "fine_tuned_model_id",
    "model": "mistral-medium",
    "status": "QUEUED",
    "job_type": "fine_tuning",
    "created_at": 1633046400000,
    "modified_at": 1633046400000,
    "training_files": ["file1.jsonl", "file2.jsonl"],
    "validation_files": ["file3.jsonl", "file4.jsonl"],
    "integrations": [],
    "object": "job"
}
''';

const jobsResponsePayload = '''
{
  "data": [
    {
      "id": "jobId1",
      "hyperparameters": {
        "training_steps": 1800,
        "learning_rate": 0.0001
      },
      "fine_tuned_model": "fine_tuned_model_id1",
      "model": "mistral-medium",
      "status": "QUEUED",
      "job_type": "fine_tuning",
      "created_at": 1633046400000,
      "modified_at": 1633046400000,
      "training_files": ["file1.jsonl", "file2.jsonl"],
      "validation_files": ["file3.jsonl", "file4.jsonl"],
      "integrations": [],
      "object": "job"
    },
    {
      "id": "jobId2",
      "hyperparameters": {
        "training_steps": 1800,
        "learning_rate": 0.0001
      },
      "fine_tuned_model": "fine_tuned_model_id2",
      "model": "mistral-medium",
      "status": "RUNNING",
      "job_type": "fine_tuning",
      "created_at": 1633046400000,
      "modified_at": 1633046400000,
      "training_files": ["file5.jsonl", "file6.jsonl"],
      "validation_files": ["file7.jsonl", "file8.jsonl"],
      "integrations": [],
      "object": "job"
    }
  ],
  "object": "list"
}
''';

const jobDeletedResponsePayload = '''
{
    "id": "jobId",
    "hyperparameters": {
      "training_steps": 1800,
      "learning_rate": 1.0e-4
    },
    "fine_tuned_model": "fine_tuned_model_id",
    "model": "mistral-medium",
    "status": "CANCELLED",
    "job_type": "fine_tuning",
    "created_at": 1633046400000,
    "modified_at": 1633046400000,
    "training_files": ["file1.jsonl", "file2.jsonl"],
    "validation_files": ["file3.jsonl", "file4.jsonl"],
    "integrations": [],
    "object": "job"
}
''';
