// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseModelCardImpl _$$BaseModelCardImplFromJson(Map<String, dynamic> json) =>
    _$BaseModelCardImpl(
      id: json['id'] as String,
      model: json['model'] as String? ?? 'model',
      created: (json['created'] as num?)?.toInt(),
      ownedBy: json['owned_by'] as String? ?? 'mistralai',
      capabilities: ModelCapabilities.fromJson(
          json['capabilities'] as Map<String, dynamic>),
      name: json['name'] as String?,
      description: json['description'] as String?,
      maxContextLength: (json['max_context_length'] as num?)?.toInt() ?? 32768,
      aliases: (json['aliases'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      deprecation: json['deprecation'] as String?,
      defaultModelTemperature:
          (json['default_model_temperature'] as num?)?.toDouble(),
      type: $enumDecodeNullable(_$BaseModelCardTypeEnumMap, json['type']) ??
          BaseModelCardType.base,
    );

Map<String, dynamic> _$$BaseModelCardImplToJson(_$BaseModelCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'model': instance.model,
      if (instance.created case final value?) 'created': value,
      'owned_by': instance.ownedBy,
      'capabilities': instance.capabilities,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
      'max_context_length': instance.maxContextLength,
      if (instance.aliases case final value?) 'aliases': value,
      if (instance.deprecation case final value?) 'deprecation': value,
      if (instance.defaultModelTemperature case final value?)
        'default_model_temperature': value,
      'type': _$BaseModelCardTypeEnumMap[instance.type]!,
    };

const _$BaseModelCardTypeEnumMap = {
  BaseModelCardType.base: 'base',
};

_$DeleteModelOutImpl _$$DeleteModelOutImplFromJson(Map<String, dynamic> json) =>
    _$DeleteModelOutImpl(
      id: json['id'] as String,
      object: json['object'] as String? ?? 'model',
      deleted: json['deleted'] as bool? ?? true,
    );

Map<String, dynamic> _$$DeleteModelOutImplToJson(
        _$DeleteModelOutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

_$FTModelCardImpl _$$FTModelCardImplFromJson(Map<String, dynamic> json) =>
    _$FTModelCardImpl(
      id: json['id'] as String,
      object: json['object'] as String? ?? 'model',
      created: (json['created'] as num?)?.toInt(),
      ownedBy: json['owned_by'] as String? ?? 'mistralai',
      capabilities: ModelCapabilities.fromJson(
          json['capabilities'] as Map<String, dynamic>),
      name: json['name'] as String?,
      description: json['description'] as String?,
      maxContextLength: (json['max_context_length'] as num?)?.toInt() ?? 32768,
      aliases: (json['aliases'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      deprecation: json['deprecation'] as String?,
      defaultModelTemperature:
          (json['default_model_temperature'] as num?)?.toDouble(),
      type: $enumDecodeNullable(_$FTModelCardTypeEnumMap, json['type']) ??
          FTModelCardType.fineTuned,
      job: json['job'] as String,
      root: json['root'] as String,
      archived: json['archived'] as bool? ?? false,
    );

Map<String, dynamic> _$$FTModelCardImplToJson(_$FTModelCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      if (instance.created case final value?) 'created': value,
      'owned_by': instance.ownedBy,
      'capabilities': instance.capabilities,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
      'max_context_length': instance.maxContextLength,
      'aliases': instance.aliases,
      if (instance.deprecation case final value?) 'deprecation': value,
      if (instance.defaultModelTemperature case final value?)
        'default_model_temperature': value,
      'type': _$FTModelCardTypeEnumMap[instance.type]!,
      'job': instance.job,
      'root': instance.root,
      'archived': instance.archived,
    };

const _$FTModelCardTypeEnumMap = {
  FTModelCardType.fineTuned: 'fine-tuned',
};

_$HTTPValidationErrorImpl _$$HTTPValidationErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$HTTPValidationErrorImpl(
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => ValidationError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HTTPValidationErrorImplToJson(
        _$HTTPValidationErrorImpl instance) =>
    <String, dynamic>{
      if (instance.detail case final value?) 'detail': value,
    };

_$ModelCapabilitiesImpl _$$ModelCapabilitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelCapabilitiesImpl(
      completionChat: json['completion_chat'] as bool? ?? true,
      completionFim: json['completion_fim'] as bool? ?? false,
      functionCalling: json['function_calling'] as bool? ?? true,
      fineTuning: json['fine_tuning'] as bool? ?? false,
      vision: json['vision'] as bool? ?? false,
    );

Map<String, dynamic> _$$ModelCapabilitiesImplToJson(
        _$ModelCapabilitiesImpl instance) =>
    <String, dynamic>{
      'completion_chat': instance.completionChat,
      'completion_fim': instance.completionFim,
      'function_calling': instance.functionCalling,
      'fine_tuning': instance.fineTuning,
      'vision': instance.vision,
    };

_$ModelListImpl _$$ModelListImplFromJson(Map<String, dynamic> json) =>
    _$ModelListImpl(
      object: json['object'] as String? ?? 'list',
      data: json['data'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ModelListImplToJson(_$ModelListImpl instance) =>
    <String, dynamic>{
      'object': instance.object,
      if (instance.data case final value?) 'data': value,
    };

_$ValidationErrorImpl _$$ValidationErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationErrorImpl(
      loc: json['loc'] as List<dynamic>,
      msg: json['msg'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$ValidationErrorImplToJson(
        _$ValidationErrorImpl instance) =>
    <String, dynamic>{
      'loc': instance.loc,
      'msg': instance.msg,
      'type': instance.type,
    };

_$UploadFileOutImpl _$$UploadFileOutImplFromJson(Map<String, dynamic> json) =>
    _$UploadFileOutImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      bytes: (json['bytes'] as num).toInt(),
      createdAt: (json['created_at'] as num).toInt(),
      filename: json['filename'] as String,
      purpose: $enumDecode(_$FilePurposeEnumMap, json['purpose']),
      sampleType: $enumDecode(_$SampleTypeEnumMap, json['sample_type']),
      numLines: (json['num_lines'] as num?)?.toInt(),
      source: $enumDecode(_$SourceEnumMap, json['source']),
    );

Map<String, dynamic> _$$UploadFileOutImplToJson(_$UploadFileOutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'bytes': instance.bytes,
      'created_at': instance.createdAt,
      'filename': instance.filename,
      'purpose': _$FilePurposeEnumMap[instance.purpose]!,
      'sample_type': _$SampleTypeEnumMap[instance.sampleType]!,
      if (instance.numLines case final value?) 'num_lines': value,
      'source': _$SourceEnumMap[instance.source]!,
    };

const _$FilePurposeEnumMap = {
  FilePurpose.fineTune: 'fine-tune',
  FilePurpose.batch: 'batch',
};

const _$SampleTypeEnumMap = {
  SampleType.pretrain: 'pretrain',
  SampleType.instruct: 'instruct',
  SampleType.batchRequest: 'batch_request',
  SampleType.batchResult: 'batch_result',
  SampleType.batchError: 'batch_error',
};

const _$SourceEnumMap = {
  Source.upload: 'upload',
  Source.repository: 'repository',
  Source.mistral: 'mistral',
};

_$FileSchemaImpl _$$FileSchemaImplFromJson(Map<String, dynamic> json) =>
    _$FileSchemaImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      bytes: (json['bytes'] as num).toInt(),
      createdAt: (json['created_at'] as num).toInt(),
      filename: json['filename'] as String,
      purpose: $enumDecode(_$FilePurposeEnumMap, json['purpose']),
      sampleType: $enumDecode(_$SampleTypeEnumMap, json['sample_type']),
      numLines: (json['num_lines'] as num?)?.toInt(),
      source: $enumDecode(_$SourceEnumMap, json['source']),
    );

Map<String, dynamic> _$$FileSchemaImplToJson(_$FileSchemaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'bytes': instance.bytes,
      'created_at': instance.createdAt,
      'filename': instance.filename,
      'purpose': _$FilePurposeEnumMap[instance.purpose]!,
      'sample_type': _$SampleTypeEnumMap[instance.sampleType]!,
      if (instance.numLines case final value?) 'num_lines': value,
      'source': _$SourceEnumMap[instance.source]!,
    };

_$ListFilesOutImpl _$$ListFilesOutImplFromJson(Map<String, dynamic> json) =>
    _$ListFilesOutImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => FileSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
      object: json['object'] as String,
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$ListFilesOutImplToJson(_$ListFilesOutImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'object': instance.object,
      'total': instance.total,
    };

_$RetrieveFileOutImpl _$$RetrieveFileOutImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrieveFileOutImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      bytes: (json['bytes'] as num).toInt(),
      createdAt: (json['created_at'] as num).toInt(),
      filename: json['filename'] as String,
      purpose: $enumDecode(_$FilePurposeEnumMap, json['purpose']),
      sampleType: $enumDecode(_$SampleTypeEnumMap, json['sample_type']),
      numLines: (json['num_lines'] as num?)?.toInt(),
      source: $enumDecode(_$SourceEnumMap, json['source']),
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$$RetrieveFileOutImplToJson(
        _$RetrieveFileOutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'bytes': instance.bytes,
      'created_at': instance.createdAt,
      'filename': instance.filename,
      'purpose': _$FilePurposeEnumMap[instance.purpose]!,
      'sample_type': _$SampleTypeEnumMap[instance.sampleType]!,
      if (instance.numLines case final value?) 'num_lines': value,
      'source': _$SourceEnumMap[instance.source]!,
      'deleted': instance.deleted,
    };

_$DeleteFileOutImpl _$$DeleteFileOutImplFromJson(Map<String, dynamic> json) =>
    _$DeleteFileOutImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$$DeleteFileOutImplToJson(_$DeleteFileOutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'deleted': instance.deleted,
    };

_$GithubRepositoryOutImpl _$$GithubRepositoryOutImplFromJson(
        Map<String, dynamic> json) =>
    _$GithubRepositoryOutImpl(
      type: $enumDecode(_$TypeEnumMap, json['type']),
      name: json['name'] as String,
      owner: json['owner'] as String,
      ref: json['ref'] as String?,
      weight: (json['weight'] as num?)?.toDouble() ?? 1.0,
      commitId: json['commit_id'] as String,
    );

Map<String, dynamic> _$$GithubRepositoryOutImplToJson(
        _$GithubRepositoryOutImpl instance) =>
    <String, dynamic>{
      'type': _$TypeEnumMap[instance.type]!,
      'name': instance.name,
      'owner': instance.owner,
      if (instance.ref case final value?) 'ref': value,
      'weight': instance.weight,
      'commit_id': instance.commitId,
    };

const _$TypeEnumMap = {
  Type.github: 'github',
};

_$JobMetadataOutImpl _$$JobMetadataOutImplFromJson(Map<String, dynamic> json) =>
    _$JobMetadataOutImpl(
      expectedDurationSeconds:
          (json['expected_duration_seconds'] as num?)?.toInt(),
      cost: (json['cost'] as num?)?.toDouble(),
      costCurrency: json['cost_currency'] as String?,
      trainTokensPerStep: (json['train_tokens_per_step'] as num?)?.toInt(),
      trainTokens: (json['train_tokens'] as num?)?.toInt(),
      dataTokens: (json['data_tokens'] as num?)?.toInt(),
      estimatedStartTime: (json['estimated_start_time'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$JobMetadataOutImplToJson(
        _$JobMetadataOutImpl instance) =>
    <String, dynamic>{
      if (instance.expectedDurationSeconds case final value?)
        'expected_duration_seconds': value,
      if (instance.cost case final value?) 'cost': value,
      if (instance.costCurrency case final value?) 'cost_currency': value,
      if (instance.trainTokensPerStep case final value?)
        'train_tokens_per_step': value,
      if (instance.trainTokens case final value?) 'train_tokens': value,
      if (instance.dataTokens case final value?) 'data_tokens': value,
      if (instance.estimatedStartTime case final value?)
        'estimated_start_time': value,
    };

_$JobOutImpl _$$JobOutImplFromJson(Map<String, dynamic> json) => _$JobOutImpl(
      id: json['id'] as String,
      autoStart: json['auto_start'] as bool,
      hyperparameters: TrainingParameters.fromJson(
          json['hyperparameters'] as Map<String, dynamic>),
      model: $enumDecode(_$FineTuneableModelEnumMap, json['model']),
      status: $enumDecode(_$StatusEnumMap, json['status']),
      jobType: json['job_type'] as String,
      createdAt: (json['created_at'] as num).toInt(),
      modifiedAt: (json['modified_at'] as num).toInt(),
      trainingFiles: (json['training_files'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      validationFiles: (json['validation_files'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      object: $enumDecodeNullable(_$JobOutObjectEnumMap, json['object']) ??
          JobOutObject.job,
      fineTunedModel: json['fine_tuned_model'] as String?,
      suffix: json['suffix'] as String?,
      integrations: (json['integrations'] as List<dynamic>?)
          ?.map((e) => WandbIntegrationOut.fromJson(e as Map<String, dynamic>))
          .toList(),
      trainedTokens: (json['trained_tokens'] as num?)?.toInt(),
      repositories: (json['repositories'] as List<dynamic>?)
              ?.map((e) =>
                  GithubRepositoryOut.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      metadata: json['metadata'] == null
          ? null
          : JobMetadataOut.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JobOutImplToJson(_$JobOutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'auto_start': instance.autoStart,
      'hyperparameters': instance.hyperparameters,
      'model': _$FineTuneableModelEnumMap[instance.model]!,
      'status': _$StatusEnumMap[instance.status]!,
      'job_type': instance.jobType,
      'created_at': instance.createdAt,
      'modified_at': instance.modifiedAt,
      'training_files': instance.trainingFiles,
      if (instance.validationFiles case final value?) 'validation_files': value,
      'object': _$JobOutObjectEnumMap[instance.object]!,
      if (instance.fineTunedModel case final value?) 'fine_tuned_model': value,
      if (instance.suffix case final value?) 'suffix': value,
      if (instance.integrations case final value?) 'integrations': value,
      if (instance.trainedTokens case final value?) 'trained_tokens': value,
      'repositories': instance.repositories,
      if (instance.metadata case final value?) 'metadata': value,
    };

const _$FineTuneableModelEnumMap = {
  FineTuneableModel.openMistral7b: 'open-mistral-7b',
  FineTuneableModel.mistralSmallLatest: 'mistral-small-latest',
  FineTuneableModel.codestralLatest: 'codestral-latest',
  FineTuneableModel.mistralLargeLatest: 'mistral-large-latest',
  FineTuneableModel.openMistralNemo: 'open-mistral-nemo',
};

const _$StatusEnumMap = {
  Status.queued: 'QUEUED',
  Status.started: 'STARTED',
  Status.validating: 'VALIDATING',
  Status.validated: 'VALIDATED',
  Status.running: 'RUNNING',
  Status.failedValidation: 'FAILED_VALIDATION',
  Status.failed: 'FAILED',
  Status.success: 'SUCCESS',
  Status.cancelled: 'CANCELLED',
  Status.cancellationRequested: 'CANCELLATION_REQUESTED',
};

const _$JobOutObjectEnumMap = {
  JobOutObject.job: 'job',
};

_$JobsOutImpl _$$JobsOutImplFromJson(Map<String, dynamic> json) =>
    _$JobsOutImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => JobOut.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      object: $enumDecodeNullable(_$JobsOutObjectEnumMap, json['object']) ??
          JobsOutObject.list,
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$JobsOutImplToJson(_$JobsOutImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'object': _$JobsOutObjectEnumMap[instance.object]!,
      'total': instance.total,
    };

const _$JobsOutObjectEnumMap = {
  JobsOutObject.list: 'list',
};

_$TrainingParametersImpl _$$TrainingParametersImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainingParametersImpl(
      trainingSteps: (json['training_steps'] as num?)?.toInt(),
      learningRate: (json['learning_rate'] as num?)?.toDouble() ?? 0.0001,
      weightDecay: (json['weight_decay'] as num?)?.toDouble() ?? 0.1,
      warmupFraction: (json['warmup_fraction'] as num?)?.toDouble() ?? 0.05,
      epochs: (json['epochs'] as num?)?.toDouble(),
      fimRatio: (json['fim_ratio'] as num?)?.toDouble() ?? 0.9,
      seqLen: (json['seq_len'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TrainingParametersImplToJson(
        _$TrainingParametersImpl instance) =>
    <String, dynamic>{
      if (instance.trainingSteps case final value?) 'training_steps': value,
      'learning_rate': instance.learningRate,
      if (instance.weightDecay case final value?) 'weight_decay': value,
      if (instance.warmupFraction case final value?) 'warmup_fraction': value,
      if (instance.epochs case final value?) 'epochs': value,
      if (instance.fimRatio case final value?) 'fim_ratio': value,
      if (instance.seqLen case final value?) 'seq_len': value,
    };

_$WandbIntegrationOutImpl _$$WandbIntegrationOutImplFromJson(
        Map<String, dynamic> json) =>
    _$WandbIntegrationOutImpl(
      type:
          $enumDecodeNullable(_$WandbIntegrationOutTypeEnumMap, json['type']) ??
              WandbIntegrationOutType.wandb,
      project: json['project'] as String,
      name: json['name'] as String?,
      runName: json['run_name'] as String?,
    );

Map<String, dynamic> _$$WandbIntegrationOutImplToJson(
        _$WandbIntegrationOutImpl instance) =>
    <String, dynamic>{
      'type': _$WandbIntegrationOutTypeEnumMap[instance.type]!,
      'project': instance.project,
      if (instance.name case final value?) 'name': value,
      if (instance.runName case final value?) 'run_name': value,
    };

const _$WandbIntegrationOutTypeEnumMap = {
  WandbIntegrationOutType.wandb: 'wandb',
};

_$LegacyJobMetadataOutImpl _$$LegacyJobMetadataOutImplFromJson(
        Map<String, dynamic> json) =>
    _$LegacyJobMetadataOutImpl(
      expectedDurationSeconds:
          (json['expected_duration_seconds'] as num?)?.toInt(),
      cost: (json['cost'] as num?)?.toDouble(),
      costCurrency: json['cost_currency'] as String?,
      trainTokensPerStep: (json['train_tokens_per_step'] as num?)?.toInt(),
      trainTokens: (json['train_tokens'] as num?)?.toInt(),
      dataTokens: (json['data_tokens'] as num?)?.toInt(),
      estimatedStartTime: (json['estimated_start_time'] as num?)?.toInt(),
      deprecated: json['deprecated'] as bool? ?? true,
      details: json['details'] as String,
      epochs: (json['epochs'] as num?)?.toDouble(),
      trainingSteps: (json['training_steps'] as num?)?.toInt(),
      object: $enumDecodeNullable(
              _$LegacyJobMetadataOutObjectEnumMap, json['object']) ??
          LegacyJobMetadataOutObject.jobMetadata,
    );

Map<String, dynamic> _$$LegacyJobMetadataOutImplToJson(
        _$LegacyJobMetadataOutImpl instance) =>
    <String, dynamic>{
      if (instance.expectedDurationSeconds case final value?)
        'expected_duration_seconds': value,
      if (instance.cost case final value?) 'cost': value,
      if (instance.costCurrency case final value?) 'cost_currency': value,
      if (instance.trainTokensPerStep case final value?)
        'train_tokens_per_step': value,
      if (instance.trainTokens case final value?) 'train_tokens': value,
      if (instance.dataTokens case final value?) 'data_tokens': value,
      if (instance.estimatedStartTime case final value?)
        'estimated_start_time': value,
      'deprecated': instance.deprecated,
      'details': instance.details,
      if (instance.epochs case final value?) 'epochs': value,
      if (instance.trainingSteps case final value?) 'training_steps': value,
      'object': _$LegacyJobMetadataOutObjectEnumMap[instance.object]!,
    };

const _$LegacyJobMetadataOutObjectEnumMap = {
  LegacyJobMetadataOutObject.jobMetadata: 'job.metadata',
};

_$GithubRepositoryInImpl _$$GithubRepositoryInImplFromJson(
        Map<String, dynamic> json) =>
    _$GithubRepositoryInImpl(
      type:
          $enumDecodeNullable(_$GithubRepositoryInTypeEnumMap, json['type']) ??
              GithubRepositoryInType.github,
      name: json['name'] as String,
      owner: json['owner'] as String,
      ref: json['ref'] as String?,
      weight: (json['weight'] as num?)?.toDouble() ?? 1.0,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$GithubRepositoryInImplToJson(
        _$GithubRepositoryInImpl instance) =>
    <String, dynamic>{
      'type': _$GithubRepositoryInTypeEnumMap[instance.type]!,
      'name': instance.name,
      'owner': instance.owner,
      if (instance.ref case final value?) 'ref': value,
      'weight': instance.weight,
      'token': instance.token,
    };

const _$GithubRepositoryInTypeEnumMap = {
  GithubRepositoryInType.github: 'github',
};

_$JobInImpl _$$JobInImplFromJson(Map<String, dynamic> json) => _$JobInImpl(
      model: $enumDecode(_$FineTuneableModelEnumMap, json['model']),
      trainingFiles: (json['training_files'] as List<dynamic>?)
              ?.map((e) => TrainingFile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      validationFiles: (json['validation_files'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hyperparameters: TrainingParametersIn.fromJson(
          json['hyperparameters'] as Map<String, dynamic>),
      suffix: json['suffix'] as String?,
      integrations: (json['integrations'] as List<dynamic>?)
          ?.map((e) => WandbIntegration.fromJson(e as Map<String, dynamic>))
          .toList(),
      repositories: (json['repositories'] as List<dynamic>?)
              ?.map(
                  (e) => GithubRepositoryIn.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      autoStart: json['auto_start'] as bool?,
    );

Map<String, dynamic> _$$JobInImplToJson(_$JobInImpl instance) =>
    <String, dynamic>{
      'model': _$FineTuneableModelEnumMap[instance.model]!,
      'training_files': instance.trainingFiles,
      if (instance.validationFiles case final value?) 'validation_files': value,
      'hyperparameters': instance.hyperparameters,
      if (instance.suffix case final value?) 'suffix': value,
      if (instance.integrations case final value?) 'integrations': value,
      'repositories': instance.repositories,
      if (instance.autoStart case final value?) 'auto_start': value,
    };

_$TrainingFileImpl _$$TrainingFileImplFromJson(Map<String, dynamic> json) =>
    _$TrainingFileImpl(
      fileId: json['file_id'] as String,
      weight: (json['weight'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$$TrainingFileImplToJson(_$TrainingFileImpl instance) =>
    <String, dynamic>{
      'file_id': instance.fileId,
      'weight': instance.weight,
    };

_$TrainingParametersInImpl _$$TrainingParametersInImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainingParametersInImpl(
      trainingSteps: (json['training_steps'] as num?)?.toInt(),
      learningRate: (json['learning_rate'] as num?)?.toDouble() ?? 0.0001,
      weightDecay: (json['weight_decay'] as num?)?.toDouble() ?? 0.1,
      warmupFraction: (json['warmup_fraction'] as num?)?.toDouble() ?? 0.05,
      epochs: (json['epochs'] as num?)?.toDouble(),
      fimRatio: (json['fim_ratio'] as num?)?.toDouble() ?? 0.9,
      seqLen: (json['seq_len'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TrainingParametersInImplToJson(
        _$TrainingParametersInImpl instance) =>
    <String, dynamic>{
      if (instance.trainingSteps case final value?) 'training_steps': value,
      'learning_rate': instance.learningRate,
      if (instance.weightDecay case final value?) 'weight_decay': value,
      if (instance.warmupFraction case final value?) 'warmup_fraction': value,
      if (instance.epochs case final value?) 'epochs': value,
      if (instance.fimRatio case final value?) 'fim_ratio': value,
      if (instance.seqLen case final value?) 'seq_len': value,
    };

_$WandbIntegrationImpl _$$WandbIntegrationImplFromJson(
        Map<String, dynamic> json) =>
    _$WandbIntegrationImpl(
      type: $enumDecodeNullable(_$WandbIntegrationTypeEnumMap, json['type']) ??
          WandbIntegrationType.wandb,
      project: json['project'] as String,
      name: json['name'] as String?,
      apiKey: json['api_key'] as String,
      runName: json['run_name'] as String?,
    );

Map<String, dynamic> _$$WandbIntegrationImplToJson(
        _$WandbIntegrationImpl instance) =>
    <String, dynamic>{
      'type': _$WandbIntegrationTypeEnumMap[instance.type]!,
      'project': instance.project,
      if (instance.name case final value?) 'name': value,
      'api_key': instance.apiKey,
      if (instance.runName case final value?) 'run_name': value,
    };

const _$WandbIntegrationTypeEnumMap = {
  WandbIntegrationType.wandb: 'wandb',
};

_$CheckpointOutImpl _$$CheckpointOutImplFromJson(Map<String, dynamic> json) =>
    _$CheckpointOutImpl(
      metrics: MetricOut.fromJson(json['metrics'] as Map<String, dynamic>),
      stepNumber: (json['step_number'] as num).toInt(),
      createdAt: (json['created_at'] as num).toInt(),
    );

Map<String, dynamic> _$$CheckpointOutImplToJson(_$CheckpointOutImpl instance) =>
    <String, dynamic>{
      'metrics': instance.metrics,
      'step_number': instance.stepNumber,
      'created_at': instance.createdAt,
    };

_$DetailedJobOutImpl _$$DetailedJobOutImplFromJson(Map<String, dynamic> json) =>
    _$DetailedJobOutImpl(
      id: json['id'] as String,
      autoStart: json['auto_start'] as bool,
      hyperparameters: TrainingParameters.fromJson(
          json['hyperparameters'] as Map<String, dynamic>),
      model: $enumDecode(_$FineTuneableModelEnumMap, json['model']),
      status: $enumDecode(_$DetailedJobOutStatusEnumMap, json['status']),
      jobType: json['job_type'] as String,
      createdAt: (json['created_at'] as num).toInt(),
      modifiedAt: (json['modified_at'] as num).toInt(),
      trainingFiles: (json['training_files'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      validationFiles: (json['validation_files'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      object:
          $enumDecodeNullable(_$DetailedJobOutObjectEnumMap, json['object']) ??
              DetailedJobOutObject.job,
      fineTunedModel: json['fine_tuned_model'] as String?,
      suffix: json['suffix'] as String?,
      integrations: (json['integrations'] as List<dynamic>?)
          ?.map((e) => WandbIntegrationOut.fromJson(e as Map<String, dynamic>))
          .toList(),
      trainedTokens: (json['trained_tokens'] as num?)?.toInt(),
      repositories: (json['repositories'] as List<dynamic>?)
              ?.map((e) =>
                  GithubRepositoryOut.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      metadata: json['metadata'] == null
          ? null
          : JobMetadataOut.fromJson(json['metadata'] as Map<String, dynamic>),
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => EventOut.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      checkpoints: (json['checkpoints'] as List<dynamic>?)
              ?.map((e) => CheckpointOut.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DetailedJobOutImplToJson(
        _$DetailedJobOutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'auto_start': instance.autoStart,
      'hyperparameters': instance.hyperparameters,
      'model': _$FineTuneableModelEnumMap[instance.model]!,
      'status': _$DetailedJobOutStatusEnumMap[instance.status]!,
      'job_type': instance.jobType,
      'created_at': instance.createdAt,
      'modified_at': instance.modifiedAt,
      'training_files': instance.trainingFiles,
      if (instance.validationFiles case final value?) 'validation_files': value,
      'object': _$DetailedJobOutObjectEnumMap[instance.object]!,
      if (instance.fineTunedModel case final value?) 'fine_tuned_model': value,
      if (instance.suffix case final value?) 'suffix': value,
      if (instance.integrations case final value?) 'integrations': value,
      if (instance.trainedTokens case final value?) 'trained_tokens': value,
      'repositories': instance.repositories,
      if (instance.metadata case final value?) 'metadata': value,
      'events': instance.events,
      'checkpoints': instance.checkpoints,
    };

const _$DetailedJobOutStatusEnumMap = {
  DetailedJobOutStatus.queued: 'QUEUED',
  DetailedJobOutStatus.started: 'STARTED',
  DetailedJobOutStatus.validating: 'VALIDATING',
  DetailedJobOutStatus.validated: 'VALIDATED',
  DetailedJobOutStatus.running: 'RUNNING',
  DetailedJobOutStatus.failedValidation: 'FAILED_VALIDATION',
  DetailedJobOutStatus.failed: 'FAILED',
  DetailedJobOutStatus.success: 'SUCCESS',
  DetailedJobOutStatus.cancelled: 'CANCELLED',
  DetailedJobOutStatus.cancellationRequested: 'CANCELLATION_REQUESTED',
};

const _$DetailedJobOutObjectEnumMap = {
  DetailedJobOutObject.job: 'job',
};

_$EventOutImpl _$$EventOutImplFromJson(Map<String, dynamic> json) =>
    _$EventOutImpl(
      name: json['name'] as String,
      data: json['data'] as Map<String, dynamic>?,
      createdAt: (json['created_at'] as num).toInt(),
    );

Map<String, dynamic> _$$EventOutImplToJson(_$EventOutImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      if (instance.data case final value?) 'data': value,
      'created_at': instance.createdAt,
    };

_$MetricOutImpl _$$MetricOutImplFromJson(Map<String, dynamic> json) =>
    _$MetricOutImpl(
      trainLoss: (json['train_loss'] as num?)?.toDouble(),
      validLoss: (json['valid_loss'] as num?)?.toDouble(),
      validMeanTokenAccuracy:
          (json['valid_mean_token_accuracy'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MetricOutImplToJson(_$MetricOutImpl instance) =>
    <String, dynamic>{
      if (instance.trainLoss case final value?) 'train_loss': value,
      if (instance.validLoss case final value?) 'valid_loss': value,
      if (instance.validMeanTokenAccuracy case final value?)
        'valid_mean_token_accuracy': value,
    };

_$FTModelCapabilitiesOutImpl _$$FTModelCapabilitiesOutImplFromJson(
        Map<String, dynamic> json) =>
    _$FTModelCapabilitiesOutImpl(
      completionChat: json['completion_chat'] as bool? ?? true,
      completionFim: json['completion_fim'] as bool? ?? false,
      functionCalling: json['function_calling'] as bool? ?? false,
      fineTuning: json['fine_tuning'] as bool? ?? false,
    );

Map<String, dynamic> _$$FTModelCapabilitiesOutImplToJson(
        _$FTModelCapabilitiesOutImpl instance) =>
    <String, dynamic>{
      'completion_chat': instance.completionChat,
      'completion_fim': instance.completionFim,
      'function_calling': instance.functionCalling,
      'fine_tuning': instance.fineTuning,
    };

_$FTModelOutImpl _$$FTModelOutImplFromJson(Map<String, dynamic> json) =>
    _$FTModelOutImpl(
      id: json['id'] as String,
      object: $enumDecodeNullable(_$FTModelOutObjectEnumMap, json['object']) ??
          FTModelOutObject.model,
      created: (json['created'] as num).toInt(),
      ownedBy: json['owned_by'] as String,
      root: json['root'] as String,
      archived: json['archived'] as bool,
      name: json['name'] as String?,
      description: json['description'] as String?,
      capabilities: FTModelCapabilitiesOut.fromJson(
          json['capabilities'] as Map<String, dynamic>),
      maxContextLength: (json['max_context_length'] as num?)?.toInt() ?? 32768,
      aliases: (json['aliases'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      job: json['job'] as String,
    );

Map<String, dynamic> _$$FTModelOutImplToJson(_$FTModelOutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': _$FTModelOutObjectEnumMap[instance.object]!,
      'created': instance.created,
      'owned_by': instance.ownedBy,
      'root': instance.root,
      'archived': instance.archived,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
      'capabilities': instance.capabilities,
      'max_context_length': instance.maxContextLength,
      'aliases': instance.aliases,
      'job': instance.job,
    };

const _$FTModelOutObjectEnumMap = {
  FTModelOutObject.model: 'model',
};

_$UpdateFTModelInImpl _$$UpdateFTModelInImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateFTModelInImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$UpdateFTModelInImplToJson(
        _$UpdateFTModelInImpl instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
    };

_$ArchiveFTModelOutImpl _$$ArchiveFTModelOutImplFromJson(
        Map<String, dynamic> json) =>
    _$ArchiveFTModelOutImpl(
      id: json['id'] as String,
      object: $enumDecodeNullable(
              _$ArchiveFTModelOutObjectEnumMap, json['object']) ??
          ArchiveFTModelOutObject.model,
      archived: json['archived'] as bool? ?? true,
    );

Map<String, dynamic> _$$ArchiveFTModelOutImplToJson(
        _$ArchiveFTModelOutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': _$ArchiveFTModelOutObjectEnumMap[instance.object]!,
      'archived': instance.archived,
    };

const _$ArchiveFTModelOutObjectEnumMap = {
  ArchiveFTModelOutObject.model: 'model',
};

_$UnarchiveFTModelOutImpl _$$UnarchiveFTModelOutImplFromJson(
        Map<String, dynamic> json) =>
    _$UnarchiveFTModelOutImpl(
      id: json['id'] as String,
      object: $enumDecodeNullable(
              _$UnarchiveFTModelOutObjectEnumMap, json['object']) ??
          UnarchiveFTModelOutObject.model,
      archived: json['archived'] as bool? ?? false,
    );

Map<String, dynamic> _$$UnarchiveFTModelOutImplToJson(
        _$UnarchiveFTModelOutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': _$UnarchiveFTModelOutObjectEnumMap[instance.object]!,
      'archived': instance.archived,
    };

const _$UnarchiveFTModelOutObjectEnumMap = {
  UnarchiveFTModelOutObject.model: 'model',
};

_$BatchErrorImpl _$$BatchErrorImplFromJson(Map<String, dynamic> json) =>
    _$BatchErrorImpl(
      message: json['message'] as String,
      count: (json['count'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$BatchErrorImplToJson(_$BatchErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'count': instance.count,
    };

_$BatchJobOutImpl _$$BatchJobOutImplFromJson(Map<String, dynamic> json) =>
    _$BatchJobOutImpl(
      id: json['id'] as String,
      object: $enumDecodeNullable(_$BatchJobOutEnumEnumMap, json['object']) ??
          BatchJobOutEnum.batch,
      inputFiles: (json['input_files'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      endpoint: json['endpoint'] as String,
      model: json['model'] as String,
      outputFile: json['output_file'] as String?,
      errorFile: json['error_file'] as String?,
      errors: (json['errors'] as List<dynamic>)
          .map((e) => BatchError.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$BatchJobStatusEnumMap, json['status']),
      createdAt: (json['created_at'] as num).toInt(),
      totalRequests: (json['total_requests'] as num).toInt(),
      completedRequests: (json['completed_requests'] as num).toInt(),
      succeededRequests: (json['succeeded_requests'] as num).toInt(),
      failedRequests: (json['failed_requests'] as num).toInt(),
      startedAt: (json['started_at'] as num?)?.toInt(),
      completedAt: (json['completed_at'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BatchJobOutImplToJson(_$BatchJobOutImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': _$BatchJobOutEnumEnumMap[instance.object]!,
      'input_files': instance.inputFiles,
      if (instance.metadata case final value?) 'metadata': value,
      'endpoint': instance.endpoint,
      'model': instance.model,
      if (instance.outputFile case final value?) 'output_file': value,
      if (instance.errorFile case final value?) 'error_file': value,
      'errors': instance.errors,
      'status': _$BatchJobStatusEnumMap[instance.status]!,
      'created_at': instance.createdAt,
      'total_requests': instance.totalRequests,
      'completed_requests': instance.completedRequests,
      'succeeded_requests': instance.succeededRequests,
      'failed_requests': instance.failedRequests,
      if (instance.startedAt case final value?) 'started_at': value,
      if (instance.completedAt case final value?) 'completed_at': value,
    };

const _$BatchJobOutEnumEnumMap = {
  BatchJobOutEnum.batch: 'batch',
};

const _$BatchJobStatusEnumMap = {
  BatchJobStatus.queued: 'QUEUED',
  BatchJobStatus.running: 'RUNNING',
  BatchJobStatus.success: 'SUCCESS',
  BatchJobStatus.failed: 'FAILED',
  BatchJobStatus.timeoutExceeded: 'TIMEOUT_EXCEEDED',
  BatchJobStatus.cancellationRequested: 'CANCELLATION_REQUESTED',
  BatchJobStatus.cancelled: 'CANCELLED',
};

_$BatchJobsOutImpl _$$BatchJobsOutImplFromJson(Map<String, dynamic> json) =>
    _$BatchJobsOutImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => BatchJobOut.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      object:
          $enumDecodeNullable(_$BatchJobsOutObjectEnumMap, json['object']) ??
              BatchJobsOutObject.list,
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$BatchJobsOutImplToJson(_$BatchJobsOutImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'object': _$BatchJobsOutObjectEnumMap[instance.object]!,
      'total': instance.total,
    };

const _$BatchJobsOutObjectEnumMap = {
  BatchJobsOutObject.list: 'list',
};

_$BatchJobInImpl _$$BatchJobInImplFromJson(Map<String, dynamic> json) =>
    _$BatchJobInImpl(
      inputFiles: (json['input_files'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      endpoint: $enumDecode(_$ApiEndpointEnumMap, json['endpoint']),
      model: json['model'] as String,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      timeoutHours: (json['timeout_hours'] as num?)?.toInt() ?? 24,
    );

Map<String, dynamic> _$$BatchJobInImplToJson(_$BatchJobInImpl instance) =>
    <String, dynamic>{
      'input_files': instance.inputFiles,
      'endpoint': _$ApiEndpointEnumMap[instance.endpoint]!,
      'model': instance.model,
      if (instance.metadata case final value?) 'metadata': value,
      'timeout_hours': instance.timeoutHours,
    };

const _$ApiEndpointEnumMap = {
  ApiEndpoint.v1ChatCompletions: '/v1/chat/completions',
  ApiEndpoint.v1Embeddings: '/v1/embeddings',
  ApiEndpoint.v1FimCompletions: '/v1/fim/completions',
  ApiEndpoint.v1Moderations: '/v1/moderations',
};

_$AssistantMessageImpl _$$AssistantMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$AssistantMessageImpl(
      content: json['content'] as String?,
      toolCalls: (json['tool_calls'] as List<dynamic>?)
          ?.map((e) => ToolCall.fromJson(e as Map<String, dynamic>))
          .toList(),
      prefix: json['prefix'] as bool? ?? false,
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']) ?? Role.assistant,
    );

Map<String, dynamic> _$$AssistantMessageImplToJson(
        _$AssistantMessageImpl instance) =>
    <String, dynamic>{
      if (instance.content case final value?) 'content': value,
      if (instance.toolCalls case final value?) 'tool_calls': value,
      'prefix': instance.prefix,
      'role': _$RoleEnumMap[instance.role]!,
    };

const _$RoleEnumMap = {
  Role.assistant: 'assistant',
};

_$ChatCompletionRequestImpl _$$ChatCompletionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatCompletionRequestImpl(
      model: json['model'] as String?,
      temperature: (json['temperature'] as num?)?.toDouble() ?? 0.7,
      topP: (json['top_p'] as num?)?.toDouble() ?? 1.0,
      maxTokens: (json['max_tokens'] as num?)?.toInt(),
      minTokens: (json['min_tokens'] as num?)?.toInt(),
      stream: json['stream'] as bool? ?? false,
      stop: const _StopConverter().fromJson(json['stop']),
      randomSeed: (json['random_seed'] as num?)?.toInt(),
      messages: json['messages'] as List<dynamic>,
      responseFormat: json['response_format'] == null
          ? null
          : ResponseFormat.fromJson(
              json['response_format'] as Map<String, dynamic>),
      tools: (json['tools'] as List<dynamic>?)
          ?.map((e) => Tool.fromJson(e as Map<String, dynamic>))
          .toList(),
      toolChoice: json['tool_choice'] == null
          ? null
          : ToolChoice.fromJson(json['tool_choice'] as Map<String, dynamic>),
      presencePenalty: (json['presence_penalty'] as num?)?.toDouble() ?? 0.0,
      frequencyPenalty: (json['frequency_penalty'] as num?)?.toDouble() ?? 0.0,
      n: (json['n'] as num?)?.toInt(),
      safePrompt: json['safe_prompt'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChatCompletionRequestImplToJson(
        _$ChatCompletionRequestImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'temperature': instance.temperature,
      'top_p': instance.topP,
      if (instance.maxTokens case final value?) 'max_tokens': value,
      if (instance.minTokens case final value?) 'min_tokens': value,
      'stream': instance.stream,
      if (const _StopConverter().toJson(instance.stop) case final value?)
        'stop': value,
      if (instance.randomSeed case final value?) 'random_seed': value,
      'messages': instance.messages,
      if (instance.responseFormat case final value?) 'response_format': value,
      if (instance.tools case final value?) 'tools': value,
      if (instance.toolChoice case final value?) 'tool_choice': value,
      'presence_penalty': instance.presencePenalty,
      'frequency_penalty': instance.frequencyPenalty,
      if (instance.n case final value?) 'n': value,
      'safe_prompt': instance.safePrompt,
    };

_$UnionStopArrayStringImpl _$$UnionStopArrayStringImplFromJson(
        Map<String, dynamic> json) =>
    _$UnionStopArrayStringImpl(
      (json['value'] as List<dynamic>).map((e) => e as String).toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnionStopArrayStringImplToJson(
        _$UnionStopArrayStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$UnionStopStringImpl _$$UnionStopStringImplFromJson(
        Map<String, dynamic> json) =>
    _$UnionStopStringImpl(
      json['value'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnionStopStringImplToJson(
        _$UnionStopStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$FIMCompletionRequestImpl _$$FIMCompletionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FIMCompletionRequestImpl(
      model: json['model'] as String?,
      temperature: (json['temperature'] as num?)?.toDouble() ?? 0.7,
      topP: (json['top_p'] as num?)?.toDouble() ?? 1.0,
      maxTokens: (json['max_tokens'] as num?)?.toInt(),
      stream: json['stream'] as bool? ?? false,
      stop: const _FIMCompletionRequestStopConverter().fromJson(json['stop']),
      randomSeed: (json['random_seed'] as num?)?.toInt(),
      prompt: json['prompt'] as String,
      suffix: json['suffix'] as String? ?? '',
      minTokens: (json['min_tokens'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FIMCompletionRequestImplToJson(
        _$FIMCompletionRequestImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'temperature': instance.temperature,
      'top_p': instance.topP,
      if (instance.maxTokens case final value?) 'max_tokens': value,
      'stream': instance.stream,
      if (const _FIMCompletionRequestStopConverter().toJson(instance.stop)
          case final value?)
        'stop': value,
      if (instance.randomSeed case final value?) 'random_seed': value,
      'prompt': instance.prompt,
      if (instance.suffix case final value?) 'suffix': value,
      if (instance.minTokens case final value?) 'min_tokens': value,
    };

_$UnionFIMCompletionRequestStopArrayStringImpl
    _$$UnionFIMCompletionRequestStopArrayStringImplFromJson(
            Map<String, dynamic> json) =>
        _$UnionFIMCompletionRequestStopArrayStringImpl(
          (json['value'] as List<dynamic>).map((e) => e as String).toList(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$UnionFIMCompletionRequestStopArrayStringImplToJson(
        _$UnionFIMCompletionRequestStopArrayStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$UnionFIMCompletionRequestStopStringImpl
    _$$UnionFIMCompletionRequestStopStringImplFromJson(
            Map<String, dynamic> json) =>
        _$UnionFIMCompletionRequestStopStringImpl(
          json['value'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$UnionFIMCompletionRequestStopStringImplToJson(
        _$UnionFIMCompletionRequestStopStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$FunctionDefinitionImpl _$$FunctionDefinitionImplFromJson(
        Map<String, dynamic> json) =>
    _$FunctionDefinitionImpl(
      name: json['name'] as String,
      description: json['description'] as String? ?? '',
      parameters: json['parameters'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$FunctionDefinitionImplToJson(
        _$FunctionDefinitionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'parameters': instance.parameters,
    };

_$FunctionCallImpl _$$FunctionCallImplFromJson(Map<String, dynamic> json) =>
    _$FunctionCallImpl(
      name: json['name'] as String,
      arguments: const _ArgumentsConverter().fromJson(json['arguments']),
    );

Map<String, dynamic> _$$FunctionCallImplToJson(_$FunctionCallImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'arguments': const _ArgumentsConverter().toJson(instance.arguments),
    };

_$UnionArgumentsStringImpl _$$UnionArgumentsStringImplFromJson(
        Map<String, dynamic> json) =>
    _$UnionArgumentsStringImpl(
      json['value'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnionArgumentsStringImplToJson(
        _$UnionArgumentsStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$UnionArgumentsMapImpl _$$UnionArgumentsMapImplFromJson(
        Map<String, dynamic> json) =>
    _$UnionArgumentsMapImpl(
      json['value'] as Map<String, dynamic>,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnionArgumentsMapImplToJson(
        _$UnionArgumentsMapImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$FunctionNameImpl _$$FunctionNameImplFromJson(Map<String, dynamic> json) =>
    _$FunctionNameImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$FunctionNameImplToJson(_$FunctionNameImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$ImageURLImpl _$$ImageURLImplFromJson(Map<String, dynamic> json) =>
    _$ImageURLImpl(
      url: json['url'] as String,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$$ImageURLImplToJson(_$ImageURLImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      if (instance.detail case final value?) 'detail': value,
    };

_$ImageURLChunkImpl _$$ImageURLChunkImplFromJson(Map<String, dynamic> json) =>
    _$ImageURLChunkImpl(
      type: $enumDecodeNullable(_$ImageURLChunkTypeEnumMap, json['type']) ??
          ImageURLChunkType.imageUrl,
      imageUrl: const _ImageUrlConverter().fromJson(json['image_url']),
    );

Map<String, dynamic> _$$ImageURLChunkImplToJson(_$ImageURLChunkImpl instance) =>
    <String, dynamic>{
      'type': _$ImageURLChunkTypeEnumMap[instance.type]!,
      'image_url': const _ImageUrlConverter().toJson(instance.imageUrl),
    };

const _$ImageURLChunkTypeEnumMap = {
  ImageURLChunkType.imageUrl: 'image_url',
};

_$UnionImageUrlImageURLImpl _$$UnionImageUrlImageURLImplFromJson(
        Map<String, dynamic> json) =>
    _$UnionImageUrlImageURLImpl(
      ImageURL.fromJson(json['value'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnionImageUrlImageURLImplToJson(
        _$UnionImageUrlImageURLImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$UnionImageUrlStringImpl _$$UnionImageUrlStringImplFromJson(
        Map<String, dynamic> json) =>
    _$UnionImageUrlStringImpl(
      json['value'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnionImageUrlStringImplToJson(
        _$UnionImageUrlStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$ReferenceChunkImpl _$$ReferenceChunkImplFromJson(Map<String, dynamic> json) =>
    _$ReferenceChunkImpl(
      type: $enumDecodeNullable(_$ReferenceChunkTypeEnumMap, json['type']) ??
          ReferenceChunkType.reference,
      referenceIds: (json['reference_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$ReferenceChunkImplToJson(
        _$ReferenceChunkImpl instance) =>
    <String, dynamic>{
      'type': _$ReferenceChunkTypeEnumMap[instance.type]!,
      'reference_ids': instance.referenceIds,
    };

const _$ReferenceChunkTypeEnumMap = {
  ReferenceChunkType.reference: 'reference',
};

_$ResponseFormatImpl _$$ResponseFormatImplFromJson(Map<String, dynamic> json) =>
    _$ResponseFormatImpl(
      type: $enumDecodeNullable(_$ResponseFormatsEnumMap, json['type']) ??
          ResponseFormats.text,
    );

Map<String, dynamic> _$$ResponseFormatImplToJson(
        _$ResponseFormatImpl instance) =>
    <String, dynamic>{
      'type': _$ResponseFormatsEnumMap[instance.type]!,
    };

const _$ResponseFormatsEnumMap = {
  ResponseFormats.text: 'text',
  ResponseFormats.jsonObject: 'json_object',
};

_$SystemMessageImpl _$$SystemMessageImplFromJson(Map<String, dynamic> json) =>
    _$SystemMessageImpl(
      content: const _ContentConverter().fromJson(json['content']),
      role: $enumDecodeNullable(_$SystemMessageRoleEnumMap, json['role']) ??
          SystemMessageRole.system,
    );

Map<String, dynamic> _$$SystemMessageImplToJson(_$SystemMessageImpl instance) =>
    <String, dynamic>{
      'content': const _ContentConverter().toJson(instance.content),
      'role': _$SystemMessageRoleEnumMap[instance.role]!,
    };

const _$SystemMessageRoleEnumMap = {
  SystemMessageRole.system: 'system',
};

_$UnionContentArrayImpl _$$UnionContentArrayImplFromJson(
        Map<String, dynamic> json) =>
    _$UnionContentArrayImpl(
      (json['value'] as List<dynamic>)
          .map((e) => ContentChunk.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnionContentArrayImplToJson(
        _$UnionContentArrayImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$UnionContentStringImpl _$$UnionContentStringImplFromJson(
        Map<String, dynamic> json) =>
    _$UnionContentStringImpl(
      json['value'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnionContentStringImplToJson(
        _$UnionContentStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$TextChunkImpl _$$TextChunkImplFromJson(Map<String, dynamic> json) =>
    _$TextChunkImpl(
      type: $enumDecodeNullable(_$TextChunkTypeEnumMap, json['type']) ??
          TextChunkType.text,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$TextChunkImplToJson(_$TextChunkImpl instance) =>
    <String, dynamic>{
      'type': _$TextChunkTypeEnumMap[instance.type]!,
      'text': instance.text,
    };

const _$TextChunkTypeEnumMap = {
  TextChunkType.text: 'text',
};

_$ToolImpl _$$ToolImplFromJson(Map<String, dynamic> json) => _$ToolImpl(
      type: $enumDecodeNullable(_$ToolTypesEnumMap, json['type']) ??
          ToolTypes.function,
      function:
          FunctionDefinition.fromJson(json['function'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ToolImplToJson(_$ToolImpl instance) =>
    <String, dynamic>{
      'type': _$ToolTypesEnumMap[instance.type]!,
      'function': instance.function,
    };

const _$ToolTypesEnumMap = {
  ToolTypes.function: 'function',
};

_$ToolCallImpl _$$ToolCallImplFromJson(Map<String, dynamic> json) =>
    _$ToolCallImpl(
      id: json['id'] as String?,
      type: $enumDecodeNullable(_$ToolTypesEnumMap, json['type']) ??
          ToolTypes.function,
      function: FunctionCall.fromJson(json['function'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ToolCallImplToJson(_$ToolCallImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'type': _$ToolTypesEnumMap[instance.type]!,
      'function': instance.function,
    };

_$ToolChoiceImpl _$$ToolChoiceImplFromJson(Map<String, dynamic> json) =>
    _$ToolChoiceImpl(
      type: $enumDecodeNullable(_$ToolTypesEnumMap, json['type']) ??
          ToolTypes.function,
      function: FunctionName.fromJson(json['function'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ToolChoiceImplToJson(_$ToolChoiceImpl instance) =>
    <String, dynamic>{
      'type': _$ToolTypesEnumMap[instance.type]!,
      'function': instance.function,
    };

_$ToolMessageImpl _$$ToolMessageImplFromJson(Map<String, dynamic> json) =>
    _$ToolMessageImpl(
      content: json['content'] as String?,
      toolCallId: json['tool_call_id'] as String?,
      name: json['name'] as String?,
      role: $enumDecodeNullable(_$ToolMessageRoleEnumMap, json['role']) ??
          ToolMessageRole.tool,
    );

Map<String, dynamic> _$$ToolMessageImplToJson(_$ToolMessageImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      if (instance.toolCallId case final value?) 'tool_call_id': value,
      if (instance.name case final value?) 'name': value,
      'role': _$ToolMessageRoleEnumMap[instance.role]!,
    };

const _$ToolMessageRoleEnumMap = {
  ToolMessageRole.tool: 'tool',
};

_$UserMessageImpl _$$UserMessageImplFromJson(Map<String, dynamic> json) =>
    _$UserMessageImpl(
      content: json['content'] as String?,
      role: $enumDecodeNullable(_$UserMessageRoleEnumMap, json['role']) ??
          UserMessageRole.user,
    );

Map<String, dynamic> _$$UserMessageImplToJson(_$UserMessageImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'role': _$UserMessageRoleEnumMap[instance.role]!,
    };

const _$UserMessageRoleEnumMap = {
  UserMessageRole.user: 'user',
};

_$AgentsCompletionRequestImpl _$$AgentsCompletionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentsCompletionRequestImpl(
      maxTokens: (json['max_tokens'] as num?)?.toInt(),
      stream: json['stream'] as bool? ?? false,
      stop:
          const _AgentsCompletionRequestStopConverter().fromJson(json['stop']),
      randomSeed: (json['random_seed'] as num?)?.toInt(),
      messages: json['messages'],
      responseFormat: json['response_format'] == null
          ? null
          : ResponseFormat.fromJson(
              json['response_format'] as Map<String, dynamic>),
      tools: (json['tools'] as List<dynamic>?)
          ?.map((e) => Tool.fromJson(e as Map<String, dynamic>))
          .toList(),
      toolChoice: json['tool_choice'] == null
          ? null
          : ToolChoice.fromJson(json['tool_choice'] as Map<String, dynamic>),
      presencePenalty: (json['presence_penalty'] as num?)?.toDouble() ?? 0.0,
      frequencyPenalty: (json['frequency_penalty'] as num?)?.toDouble() ?? 0.0,
      n: (json['n'] as num?)?.toInt(),
      agentId: json['agent_id'] as String,
    );

Map<String, dynamic> _$$AgentsCompletionRequestImplToJson(
        _$AgentsCompletionRequestImpl instance) =>
    <String, dynamic>{
      if (instance.maxTokens case final value?) 'max_tokens': value,
      'stream': instance.stream,
      if (const _AgentsCompletionRequestStopConverter().toJson(instance.stop)
          case final value?)
        'stop': value,
      if (instance.randomSeed case final value?) 'random_seed': value,
      'messages': instance.messages,
      if (instance.responseFormat case final value?) 'response_format': value,
      if (instance.tools case final value?) 'tools': value,
      if (instance.toolChoice case final value?) 'tool_choice': value,
      'presence_penalty': instance.presencePenalty,
      'frequency_penalty': instance.frequencyPenalty,
      if (instance.n case final value?) 'n': value,
      'agent_id': instance.agentId,
    };

_$UnionAgentsCompletionRequestStopArrayStringImpl
    _$$UnionAgentsCompletionRequestStopArrayStringImplFromJson(
            Map<String, dynamic> json) =>
        _$UnionAgentsCompletionRequestStopArrayStringImpl(
          (json['value'] as List<dynamic>).map((e) => e as String).toList(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$UnionAgentsCompletionRequestStopArrayStringImplToJson(
        _$UnionAgentsCompletionRequestStopArrayStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$UnionAgentsCompletionRequestStopStringImpl
    _$$UnionAgentsCompletionRequestStopStringImplFromJson(
            Map<String, dynamic> json) =>
        _$UnionAgentsCompletionRequestStopStringImpl(
          json['value'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$UnionAgentsCompletionRequestStopStringImplToJson(
        _$UnionAgentsCompletionRequestStopStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$ContentChunkImpl _$$ContentChunkImplFromJson(Map<String, dynamic> json) =>
    _$ContentChunkImpl();

Map<String, dynamic> _$$ContentChunkImplToJson(_$ContentChunkImpl instance) =>
    <String, dynamic>{};

_$EmbeddingRequestImpl _$$EmbeddingRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EmbeddingRequestImpl(
      input: const _EmbeddingRequestInputConverter().fromJson(json['input']),
      model: json['model'] as String,
      encodingFormat: json['encoding_format'] as String? ?? 'float',
    );

Map<String, dynamic> _$$EmbeddingRequestImplToJson(
        _$EmbeddingRequestImpl instance) =>
    <String, dynamic>{
      'input': const _EmbeddingRequestInputConverter().toJson(instance.input),
      'model': instance.model,
      if (instance.encodingFormat case final value?) 'encoding_format': value,
    };

_$UnionEmbeddingRequestInputArrayStringImpl
    _$$UnionEmbeddingRequestInputArrayStringImplFromJson(
            Map<String, dynamic> json) =>
        _$UnionEmbeddingRequestInputArrayStringImpl(
          (json['value'] as List<dynamic>).map((e) => e as String).toList(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$UnionEmbeddingRequestInputArrayStringImplToJson(
        _$UnionEmbeddingRequestInputArrayStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$UnionEmbeddingRequestInputStringImpl
    _$$UnionEmbeddingRequestInputStringImplFromJson(
            Map<String, dynamic> json) =>
        _$UnionEmbeddingRequestInputStringImpl(
          json['value'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$UnionEmbeddingRequestInputStringImplToJson(
        _$UnionEmbeddingRequestInputStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$ChatClassificationRequestImpl _$$ChatClassificationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatClassificationRequestImpl(
      input: const _InputConverter().fromJson(json['input']),
      model: json['model'] as String?,
    );

Map<String, dynamic> _$$ChatClassificationRequestImplToJson(
        _$ChatClassificationRequestImpl instance) =>
    <String, dynamic>{
      'input': const _InputConverter().toJson(instance.input),
      'model': instance.model,
    };

_$UnionInputArrayImpl _$$UnionInputArrayImplFromJson(
        Map<String, dynamic> json) =>
    _$UnionInputArrayImpl(
      (json['value'] as List<dynamic>).map((e) => e as List<dynamic>).toList(),
    );

Map<String, dynamic> _$$UnionInputArrayImplToJson(
        _$UnionInputArrayImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$ClassificationRequestImpl _$$ClassificationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassificationRequestImpl(
      input:
          const _ClassificationRequestInputConverter().fromJson(json['input']),
      model: json['model'] as String?,
    );

Map<String, dynamic> _$$ClassificationRequestImplToJson(
        _$ClassificationRequestImpl instance) =>
    <String, dynamic>{
      'input':
          const _ClassificationRequestInputConverter().toJson(instance.input),
      if (instance.model case final value?) 'model': value,
    };

_$UnionClassificationRequestInputArrayStringImpl
    _$$UnionClassificationRequestInputArrayStringImplFromJson(
            Map<String, dynamic> json) =>
        _$UnionClassificationRequestInputArrayStringImpl(
          (json['value'] as List<dynamic>).map((e) => e as String).toList(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$UnionClassificationRequestInputArrayStringImplToJson(
        _$UnionClassificationRequestInputArrayStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$UnionClassificationRequestInputStringImpl
    _$$UnionClassificationRequestInputStringImplFromJson(
            Map<String, dynamic> json) =>
        _$UnionClassificationRequestInputStringImpl(
          json['value'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$UnionClassificationRequestInputStringImplToJson(
        _$UnionClassificationRequestInputStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$UsageInfoImpl _$$UsageInfoImplFromJson(Map<String, dynamic> json) =>
    _$UsageInfoImpl(
      promptTokens: (json['prompt_tokens'] as num).toInt(),
      completionTokens: (json['completion_tokens'] as num).toInt(),
      totalTokens: (json['total_tokens'] as num).toInt(),
    );

Map<String, dynamic> _$$UsageInfoImplToJson(_$UsageInfoImpl instance) =>
    <String, dynamic>{
      'prompt_tokens': instance.promptTokens,
      'completion_tokens': instance.completionTokens,
      'total_tokens': instance.totalTokens,
    };

_$ResponseBaseImpl _$$ResponseBaseImplFromJson(Map<String, dynamic> json) =>
    _$ResponseBaseImpl(
      id: json['id'] as String?,
      object: json['object'] as String?,
      model: json['model'] as String?,
      usage: json['usage'] == null
          ? null
          : UsageInfo.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseBaseImplToJson(_$ResponseBaseImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.object case final value?) 'object': value,
      if (instance.model case final value?) 'model': value,
      if (instance.usage case final value?) 'usage': value,
    };

_$ChatCompletionChoiceImpl _$$ChatCompletionChoiceImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatCompletionChoiceImpl(
      index: (json['index'] as num).toInt(),
      message:
          AssistantMessage.fromJson(json['message'] as Map<String, dynamic>),
      finishReason:
          $enumDecode(_$FinishReasonEnumEnumMap, json['finish_reason']),
    );

Map<String, dynamic> _$$ChatCompletionChoiceImplToJson(
        _$ChatCompletionChoiceImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finish_reason': _$FinishReasonEnumEnumMap[instance.finishReason]!,
    };

const _$FinishReasonEnumEnumMap = {
  FinishReasonEnum.stop: 'stop',
  FinishReasonEnum.length: 'length',
  FinishReasonEnum.modelLength: 'model_length',
  FinishReasonEnum.error: 'error',
  FinishReasonEnum.toolCalls: 'tool_calls',
};

_$DeltaMessageImpl _$$DeltaMessageImplFromJson(Map<String, dynamic> json) =>
    _$DeltaMessageImpl(
      role: json['role'] as String?,
      content: json['content'] as String?,
      toolCalls: (json['tool_calls'] as List<dynamic>?)
          ?.map((e) => ToolCall.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DeltaMessageImplToJson(_$DeltaMessageImpl instance) =>
    <String, dynamic>{
      if (instance.role case final value?) 'role': value,
      if (instance.content case final value?) 'content': value,
      if (instance.toolCalls case final value?) 'tool_calls': value,
    };

_$ChatCompletionResponseBaseImpl _$$ChatCompletionResponseBaseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatCompletionResponseBaseImpl(
      id: json['id'] as String?,
      object: json['object'] as String?,
      model: json['model'] as String?,
      usage: json['usage'] == null
          ? null
          : UsageInfo.fromJson(json['usage'] as Map<String, dynamic>),
      created: (json['created'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ChatCompletionResponseBaseImplToJson(
        _$ChatCompletionResponseBaseImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.object case final value?) 'object': value,
      if (instance.model case final value?) 'model': value,
      if (instance.usage case final value?) 'usage': value,
      if (instance.created case final value?) 'created': value,
    };

_$ChatCompletionResponseImpl _$$ChatCompletionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatCompletionResponseImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      model: json['model'] as String,
      usage: UsageInfo.fromJson(json['usage'] as Map<String, dynamic>),
      created: (json['created'] as num?)?.toInt(),
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => ChatCompletionChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatCompletionResponseImplToJson(
        _$ChatCompletionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'model': instance.model,
      'usage': instance.usage,
      if (instance.created case final value?) 'created': value,
      if (instance.choices case final value?) 'choices': value,
    };

_$FIMCompletionResponseImpl _$$FIMCompletionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FIMCompletionResponseImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      model: json['model'] as String,
      usage: UsageInfo.fromJson(json['usage'] as Map<String, dynamic>),
      created: (json['created'] as num?)?.toInt(),
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => ChatCompletionChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FIMCompletionResponseImplToJson(
        _$FIMCompletionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'model': instance.model,
      'usage': instance.usage,
      if (instance.created case final value?) 'created': value,
      if (instance.choices case final value?) 'choices': value,
    };

_$EmbeddingResponseDataImpl _$$EmbeddingResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$EmbeddingResponseDataImpl(
      object: json['object'] as String?,
      embedding: (json['embedding'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      index: (json['index'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EmbeddingResponseDataImplToJson(
        _$EmbeddingResponseDataImpl instance) =>
    <String, dynamic>{
      if (instance.object case final value?) 'object': value,
      if (instance.embedding case final value?) 'embedding': value,
      if (instance.index case final value?) 'index': value,
    };

_$EmbeddingResponseImpl _$$EmbeddingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EmbeddingResponseImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      model: json['model'] as String,
      usage: UsageInfo.fromJson(json['usage'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => EmbeddingResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EmbeddingResponseImplToJson(
        _$EmbeddingResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'model': instance.model,
      'usage': instance.usage,
      'data': instance.data,
    };

_$ClassificationResponseImpl _$$ClassificationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassificationResponseImpl(
      id: json['id'] as String?,
      model: json['model'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ClassificationObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClassificationResponseImplToJson(
        _$ClassificationResponseImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.model case final value?) 'model': value,
      if (instance.results case final value?) 'results': value,
    };

_$ClassificationObjectImpl _$$ClassificationObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassificationObjectImpl(
      categories: (json['categories'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
      categoryScores: (json['category_scores'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$ClassificationObjectImplToJson(
        _$ClassificationObjectImpl instance) =>
    <String, dynamic>{
      if (instance.categories case final value?) 'categories': value,
      if (instance.categoryScores case final value?) 'category_scores': value,
    };

_$CompletionEventImpl _$$CompletionEventImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletionEventImpl(
      data: CompletionChunk.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompletionEventImplToJson(
        _$CompletionEventImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CompletionChunkImpl _$$CompletionChunkImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletionChunkImpl(
      id: json['id'] as String,
      object: json['object'] as String?,
      created: (json['created'] as num?)?.toInt(),
      model: json['model'] as String,
      usage: json['usage'] == null
          ? null
          : UsageInfo.fromJson(json['usage'] as Map<String, dynamic>),
      choices: (json['choices'] as List<dynamic>)
          .map((e) => CompletionResponseStreamChoice.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CompletionChunkImplToJson(
        _$CompletionChunkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      if (instance.object case final value?) 'object': value,
      if (instance.created case final value?) 'created': value,
      'model': instance.model,
      if (instance.usage case final value?) 'usage': value,
      'choices': instance.choices,
    };

_$CompletionResponseStreamChoiceImpl
    _$$CompletionResponseStreamChoiceImplFromJson(Map<String, dynamic> json) =>
        _$CompletionResponseStreamChoiceImpl(
          index: (json['index'] as num).toInt(),
          delta: DeltaMessage.fromJson(json['delta'] as Map<String, dynamic>),
          finishReason: $enumDecodeNullable(
              _$CompletionResponseStreamChoiceFinishReasonEnumMap,
              json['finish_reason'],
              unknownValue: JsonKey.nullForUndefinedEnumValue),
        );

Map<String, dynamic> _$$CompletionResponseStreamChoiceImplToJson(
        _$CompletionResponseStreamChoiceImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'delta': instance.delta,
      'finish_reason': _$CompletionResponseStreamChoiceFinishReasonEnumMap[
          instance.finishReason],
    };

const _$CompletionResponseStreamChoiceFinishReasonEnumMap = {
  CompletionResponseStreamChoiceFinishReason.stop: 'stop',
  CompletionResponseStreamChoiceFinishReason.length: 'length',
  CompletionResponseStreamChoiceFinishReason.error: 'error',
  CompletionResponseStreamChoiceFinishReason.toolCalls: 'tool_calls',
};

_$UnionURLImageImpl _$$UnionURLImageImplFromJson(Map<String, dynamic> json) =>
    _$UnionURLImageImpl(
      url: json['url'] as String,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$$UnionURLImageImplToJson(_$UnionURLImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      if (instance.detail case final value?) 'detail': value,
    };
