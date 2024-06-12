import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'jobs.g.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum JobStatus {
  queued,
  started,
  running,
  failed,
  success,
  cancelled,
  cancellationRequested,
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class TrainingParameters {
  const TrainingParameters({
    required this.trainingSteps,
    required this.learningRate,
  });

  factory TrainingParameters.fromJson(Map<String, dynamic> json) =>
      _$TrainingParametersFromJson(json);

  final int trainingSteps;
  final double learningRate;

  Map<String, dynamic> toJson() => _$TrainingParametersToJson(this);

  @override
  String toString() {
    return 'TrainingParameters{trainingSteps: $trainingSteps, '
        'learningRate: $learningRate}';
  }
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class WandbIntegration {
  const WandbIntegration({
    required this.project,
    this.type = 'wandb',
    this.name,
    this.apiKey,
    this.runName,
  });

  factory WandbIntegration.fromJson(Map<String, dynamic> json) =>
      _$WandbIntegrationFromJson(json);

  final String type;
  final String project;
  final String? name;
  final String? apiKey;
  final String? runName;

  Map<String, dynamic> toJson() => _$WandbIntegrationToJson(this);

  @override
  String toString() {
    return 'WandbIntegration{type: $type, project: $project, '
        'name: $name, apiKey: $apiKey, runName: $runName}';
  }
}

typedef Integration = WandbIntegration;

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class Job {
  const Job({
    required this.id,
    required this.hyperparameters,
    required this.model,
    required this.status,
    required this.jobType,
    required this.createdAt,
    required this.modifiedAt,
    required this.trainingFiles,
    required this.integrations,
    this.object = 'job',
    this.validationFiles,
    this.fineTunedModel,
  });

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  final String id;
  final TrainingParameters hyperparameters;
  final String? fineTunedModel;
  final String model;
  final JobStatus status;
  final String jobType;
  final int createdAt;
  final int modifiedAt;
  final List<String> trainingFiles;
  final List<String>? validationFiles;
  final String object;
  final List<WandbIntegration> integrations;

  @override
  String toString() {
    return 'Job{id: $id, hyperparameters: $hyperparameters, '
        'fineTunedModel: $fineTunedModel, model: $model, status: $status, '
        'jobType: $jobType, createdAt: $createdAt, modifiedAt: $modifiedAt, '
        'trainingFiles: $trainingFiles, validationFiles: $validationFiles, '
        'object: $object, integrations: $integrations}';
  }
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class Event {
  const Event({
    required this.name,
    required this.createdAt,
    this.data,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  final String name;
  final Map<String, dynamic>? data;
  final int createdAt;

  @override
  String toString() {
    return 'Event{name: $name, createdAt: $createdAt, data: $data}';
  }
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class Metric {
  const Metric({
    this.trainLoss,
    this.validLoss,
    this.validMeanTokenAccuracy,
  });

  factory Metric.fromJson(Map<String, dynamic> json) => _$MetricFromJson(json);

  final double? trainLoss;
  final double? validLoss;
  final double? validMeanTokenAccuracy;

  @override
  String toString() {
    return 'Metric{trainLoss: $trainLoss, validLoss: $validLoss, '
        'validMeanTokenAccuracy: $validMeanTokenAccuracy}';
  }
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class Checkpoint {
  const Checkpoint({
    required this.metrics,
    required this.stepNumber,
    required this.createdAt,
  });

  factory Checkpoint.fromJson(Map<String, dynamic> json) =>
      _$CheckpointFromJson(json);

  final Metric metrics;
  final int stepNumber;
  final int createdAt;

  @override
  String toString() {
    return 'Checkpoint{metrics: $metrics, stepNumber: $stepNumber, '
        'createdAt: $createdAt}';
  }
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class DetailedJob extends Job {
  const DetailedJob({
    required super.id,
    required super.hyperparameters,
    required super.fineTunedModel,
    required super.model,
    required super.status,
    required super.jobType,
    required super.createdAt,
    required super.modifiedAt,
    required super.trainingFiles,
    required super.object,
    required super.integrations,
    required this.events,
    required this.checkpoints,
    super.validationFiles,
  });

  factory DetailedJob.fromJson(Map<String, dynamic> json) =>
      _$DetailedJobFromJson(json);

  final List<Event> events;
  final List<Checkpoint> checkpoints;

  @override
  String toString() {
    return 'DetailedJob{super:${super.toString()}, events: $events, '
        'checkpoints: $checkpoints}';
  }
}

@immutable
@JsonSerializable(fieldRename: FieldRename.snake)
class Jobs {
  const Jobs({
    required this.data,
    this.object = 'list',
  });

  factory Jobs.fromJson(Map<String, dynamic> json) => _$JobsFromJson(json);

  final List<Job> data;
  final String object;

  @override
  String toString() {
    return 'Jobs{data: $data, object: $object}';
  }
}
