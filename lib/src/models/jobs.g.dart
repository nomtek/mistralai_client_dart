// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrainingParameters _$TrainingParametersFromJson(Map<String, dynamic> json) =>
    TrainingParameters(
      trainingSteps: json['training_steps'] as int,
      learningRate: (json['learning_rate'] as num).toDouble(),
    );

Map<String, dynamic> _$TrainingParametersToJson(TrainingParameters instance) =>
    <String, dynamic>{
      'training_steps': instance.trainingSteps,
      'learning_rate': instance.learningRate,
    };

WandbIntegration _$WandbIntegrationFromJson(Map<String, dynamic> json) =>
    WandbIntegration(
      project: json['project'] as String,
      type: json['type'] as String? ?? 'wandb',
      name: json['name'] as String?,
      apiKey: json['api_key'] as String?,
      runName: json['run_name'] as String?,
    );

Map<String, dynamic> _$WandbIntegrationToJson(WandbIntegration instance) =>
    <String, dynamic>{
      'type': instance.type,
      'project': instance.project,
      'name': instance.name,
      'api_key': instance.apiKey,
      'run_name': instance.runName,
    };

Job _$JobFromJson(Map<String, dynamic> json) => Job(
      id: json['id'] as String,
      hyperparameters: TrainingParameters.fromJson(
          json['hyperparameters'] as Map<String, dynamic>),
      model: json['model'] as String,
      status: $enumDecode(_$JobStatusEnumMap, json['status']),
      jobType: json['job_type'] as String,
      createdAt: json['created_at'] as int,
      modifiedAt: json['modified_at'] as int,
      trainingFiles: (json['training_files'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      integrations: (json['integrations'] as List<dynamic>)
          .map((e) => WandbIntegration.fromJson(e as Map<String, dynamic>))
          .toList(),
      object: json['object'] as String? ?? 'job',
      validationFiles: (json['validation_files'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fineTunedModel: json['fine_tuned_model'] as String?,
    );

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'id': instance.id,
      'hyperparameters': instance.hyperparameters,
      'fine_tuned_model': instance.fineTunedModel,
      'model': instance.model,
      'status': _$JobStatusEnumMap[instance.status]!,
      'job_type': instance.jobType,
      'created_at': instance.createdAt,
      'modified_at': instance.modifiedAt,
      'training_files': instance.trainingFiles,
      'validation_files': instance.validationFiles,
      'object': instance.object,
      'integrations': instance.integrations,
    };

const _$JobStatusEnumMap = {
  JobStatus.queued: 'QUEUED',
  JobStatus.started: 'STARTED',
  JobStatus.running: 'RUNNING',
  JobStatus.failed: 'FAILED',
  JobStatus.success: 'SUCCESS',
  JobStatus.cancelled: 'CANCELLED',
  JobStatus.cancellationRequested: 'CANCELLATION_REQUESTED',
};

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      name: json['name'] as String,
      createdAt: json['created_at'] as int,
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'name': instance.name,
      'data': instance.data,
      'created_at': instance.createdAt,
    };

Metric _$MetricFromJson(Map<String, dynamic> json) => Metric(
      trainLoss: (json['train_loss'] as num?)?.toDouble(),
      validLoss: (json['valid_loss'] as num?)?.toDouble(),
      validMeanTokenAccuracy:
          (json['valid_mean_token_accuracy'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MetricToJson(Metric instance) => <String, dynamic>{
      'train_loss': instance.trainLoss,
      'valid_loss': instance.validLoss,
      'valid_mean_token_accuracy': instance.validMeanTokenAccuracy,
    };

Checkpoint _$CheckpointFromJson(Map<String, dynamic> json) => Checkpoint(
      metrics: Metric.fromJson(json['metrics'] as Map<String, dynamic>),
      stepNumber: json['step_number'] as int,
      createdAt: json['created_at'] as int,
    );

Map<String, dynamic> _$CheckpointToJson(Checkpoint instance) =>
    <String, dynamic>{
      'metrics': instance.metrics,
      'step_number': instance.stepNumber,
      'created_at': instance.createdAt,
    };

DetailedJob _$DetailedJobFromJson(Map<String, dynamic> json) => DetailedJob(
      id: json['id'] as String,
      hyperparameters: TrainingParameters.fromJson(
          json['hyperparameters'] as Map<String, dynamic>),
      fineTunedModel: json['fine_tuned_model'] as String?,
      model: json['model'] as String,
      status: $enumDecode(_$JobStatusEnumMap, json['status']),
      jobType: json['job_type'] as String,
      createdAt: json['created_at'] as int,
      modifiedAt: json['modified_at'] as int,
      trainingFiles: (json['training_files'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      object: json['object'] as String? ?? 'job',
      integrations: (json['integrations'] as List<dynamic>)
          .map((e) => WandbIntegration.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>)
          .map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkpoints: (json['checkpoints'] as List<dynamic>)
          .map((e) => Checkpoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      validationFiles: (json['validation_files'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DetailedJobToJson(DetailedJob instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hyperparameters': instance.hyperparameters,
      'fine_tuned_model': instance.fineTunedModel,
      'model': instance.model,
      'status': _$JobStatusEnumMap[instance.status]!,
      'job_type': instance.jobType,
      'created_at': instance.createdAt,
      'modified_at': instance.modifiedAt,
      'training_files': instance.trainingFiles,
      'validation_files': instance.validationFiles,
      'object': instance.object,
      'integrations': instance.integrations,
      'events': instance.events,
      'checkpoints': instance.checkpoints,
    };

Jobs _$JobsFromJson(Map<String, dynamic> json) => Jobs(
      data: (json['data'] as List<dynamic>)
          .map((e) => Job.fromJson(e as Map<String, dynamic>))
          .toList(),
      object: json['object'] as String? ?? 'list',
    );

Map<String, dynamic> _$JobsToJson(Jobs instance) => <String, dynamic>{
      'data': instance.data,
      'object': instance.object,
    };
