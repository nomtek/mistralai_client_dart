// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

_$HTTPValidationErrorImpl _$$HTTPValidationErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$HTTPValidationErrorImpl(
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => ValidationError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HTTPValidationErrorImplToJson(
    _$HTTPValidationErrorImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('detail', instance.detail);
  return val;
}

_$ModelCapabilitiesImpl _$$ModelCapabilitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelCapabilitiesImpl(
      completionChat: json['completion_chat'] as bool? ?? true,
      completionFim: json['completion_fim'] as bool? ?? false,
      functionCalling: json['function_calling'] as bool? ?? true,
      fineTuning: json['fine_tuning'] as bool? ?? false,
    );

Map<String, dynamic> _$$ModelCapabilitiesImplToJson(
        _$ModelCapabilitiesImpl instance) =>
    <String, dynamic>{
      'completion_chat': instance.completionChat,
      'completion_fim': instance.completionFim,
      'function_calling': instance.functionCalling,
      'fine_tuning': instance.fineTuning,
    };

_$ModelCardImpl _$$ModelCardImplFromJson(Map<String, dynamic> json) =>
    _$ModelCardImpl(
      id: json['id'] as String,
      object: json['object'] as String? ?? 'model',
      created: (json['created'] as num?)?.toInt(),
      ownedBy: json['owned_by'] as String? ?? 'mistralai',
      root: json['root'] as String?,
      archived: json['archived'] as bool? ?? false,
      name: json['name'] as String?,
      description: json['description'] as String?,
      capabilities: ModelCapabilities.fromJson(
          json['capabilities'] as Map<String, dynamic>),
      maxContextLength: (json['max_context_length'] as num?)?.toInt() ?? 32768,
      aliases: (json['aliases'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      deprecation: json['deprecation'] as String?,
    );

Map<String, dynamic> _$$ModelCardImplToJson(_$ModelCardImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'object': instance.object,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created);
  val['owned_by'] = instance.ownedBy;
  writeNotNull('root', instance.root);
  val['archived'] = instance.archived;
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  val['capabilities'] = instance.capabilities;
  val['max_context_length'] = instance.maxContextLength;
  val['aliases'] = instance.aliases;
  writeNotNull('deprecation', instance.deprecation);
  return val;
}

_$ModelListImpl _$$ModelListImplFromJson(Map<String, dynamic> json) =>
    _$ModelListImpl(
      object: json['object'] as String? ?? 'list',
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ModelCard.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModelListImplToJson(_$ModelListImpl instance) {
  final val = <String, dynamic>{
    'object': instance.object,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  return val;
}

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
      purpose: $enumDecode(_$PurposeEnumMap, json['purpose']),
      sampleType: $enumDecode(_$SampleTypeEnumMap, json['sample_type']),
      numLines: (json['num_lines'] as num?)?.toInt(),
      source: $enumDecode(_$SourceEnumMap, json['source']),
    );

Map<String, dynamic> _$$UploadFileOutImplToJson(_$UploadFileOutImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'object': instance.object,
    'bytes': instance.bytes,
    'created_at': instance.createdAt,
    'filename': instance.filename,
    'purpose': _$PurposeEnumMap[instance.purpose]!,
    'sample_type': _$SampleTypeEnumMap[instance.sampleType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('num_lines', instance.numLines);
  val['source'] = _$SourceEnumMap[instance.source]!;
  return val;
}

const _$PurposeEnumMap = {
  Purpose.fineTune: 'fine-tune',
};

const _$SampleTypeEnumMap = {
  SampleType.pretrain: 'pretrain',
  SampleType.instruct: 'instruct',
};

const _$SourceEnumMap = {
  Source.upload: 'upload',
  Source.repository: 'repository',
};

_$FileSchemaImpl _$$FileSchemaImplFromJson(Map<String, dynamic> json) =>
    _$FileSchemaImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      bytes: (json['bytes'] as num).toInt(),
      createdAt: (json['created_at'] as num).toInt(),
      filename: json['filename'] as String,
      purpose: json['purpose'],
      sampleType: $enumDecode(_$SampleTypeEnumMap, json['sample_type']),
      numLines: (json['num_lines'] as num?)?.toInt(),
      source: $enumDecode(_$SourceEnumMap, json['source']),
    );

Map<String, dynamic> _$$FileSchemaImplToJson(_$FileSchemaImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'object': instance.object,
    'bytes': instance.bytes,
    'created_at': instance.createdAt,
    'filename': instance.filename,
    'purpose': instance.purpose,
    'sample_type': _$SampleTypeEnumMap[instance.sampleType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('num_lines', instance.numLines);
  val['source'] = _$SourceEnumMap[instance.source]!;
  return val;
}

_$ListFilesOutImpl _$$ListFilesOutImplFromJson(Map<String, dynamic> json) =>
    _$ListFilesOutImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => FileSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
      object: json['object'] as String,
    );

Map<String, dynamic> _$$ListFilesOutImplToJson(_$ListFilesOutImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'object': instance.object,
    };

_$RetrieveFileOutImpl _$$RetrieveFileOutImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrieveFileOutImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      bytes: (json['bytes'] as num).toInt(),
      createdAt: (json['created_at'] as num).toInt(),
      filename: json['filename'] as String,
      purpose: $enumDecode(_$RetrieveFileOutPurposeEnumMap, json['purpose']),
      sampleType: $enumDecode(_$SampleTypeEnumMap, json['sample_type']),
      numLines: (json['num_lines'] as num?)?.toInt(),
      source: $enumDecode(_$SourceEnumMap, json['source']),
    );

Map<String, dynamic> _$$RetrieveFileOutImplToJson(
    _$RetrieveFileOutImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'object': instance.object,
    'bytes': instance.bytes,
    'created_at': instance.createdAt,
    'filename': instance.filename,
    'purpose': _$RetrieveFileOutPurposeEnumMap[instance.purpose]!,
    'sample_type': _$SampleTypeEnumMap[instance.sampleType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('num_lines', instance.numLines);
  val['source'] = _$SourceEnumMap[instance.source]!;
  return val;
}

const _$RetrieveFileOutPurposeEnumMap = {
  RetrieveFileOutPurpose.fineTune: 'fine-tune',
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
      type: $enumDecodeNullable(_$TypeEnumMap, json['type']) ?? Type.github,
      name: json['name'] as String,
      owner: json['owner'] as String,
      ref: json['ref'] as String?,
      weight: (json['weight'] as num?)?.toDouble() ?? 1.0,
      commitId: json['commit_id'] as String,
    );

Map<String, dynamic> _$$GithubRepositoryOutImplToJson(
    _$GithubRepositoryOutImpl instance) {
  final val = <String, dynamic>{
    'type': _$TypeEnumMap[instance.type]!,
    'name': instance.name,
    'owner': instance.owner,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ref', instance.ref);
  val['weight'] = instance.weight;
  val['commit_id'] = instance.commitId;
  return val;
}

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
    _$JobMetadataOutImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expected_duration_seconds', instance.expectedDurationSeconds);
  writeNotNull('cost', instance.cost);
  writeNotNull('cost_currency', instance.costCurrency);
  writeNotNull('train_tokens_per_step', instance.trainTokensPerStep);
  writeNotNull('train_tokens', instance.trainTokens);
  writeNotNull('data_tokens', instance.dataTokens);
  writeNotNull('estimated_start_time', instance.estimatedStartTime);
  return val;
}

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

Map<String, dynamic> _$$JobOutImplToJson(_$JobOutImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'auto_start': instance.autoStart,
    'hyperparameters': instance.hyperparameters,
    'model': _$FineTuneableModelEnumMap[instance.model]!,
    'status': _$StatusEnumMap[instance.status]!,
    'job_type': instance.jobType,
    'created_at': instance.createdAt,
    'modified_at': instance.modifiedAt,
    'training_files': instance.trainingFiles,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('validation_files', instance.validationFiles);
  val['object'] = _$JobOutObjectEnumMap[instance.object]!;
  writeNotNull('fine_tuned_model', instance.fineTunedModel);
  writeNotNull('suffix', instance.suffix);
  writeNotNull('integrations', instance.integrations);
  writeNotNull('trained_tokens', instance.trainedTokens);
  val['repositories'] = instance.repositories;
  writeNotNull('metadata', instance.metadata);
  return val;
}

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
      epochs: (json['epochs'] as num?)?.toDouble(),
      fimRatio: (json['fim_ratio'] as num?)?.toDouble() ?? 0.9,
    );

Map<String, dynamic> _$$TrainingParametersImplToJson(
    _$TrainingParametersImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('training_steps', instance.trainingSteps);
  val['learning_rate'] = instance.learningRate;
  writeNotNull('epochs', instance.epochs);
  writeNotNull('fim_ratio', instance.fimRatio);
  return val;
}

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
    _$WandbIntegrationOutImpl instance) {
  final val = <String, dynamic>{
    'type': _$WandbIntegrationOutTypeEnumMap[instance.type]!,
    'project': instance.project,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('run_name', instance.runName);
  return val;
}

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
    _$LegacyJobMetadataOutImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expected_duration_seconds', instance.expectedDurationSeconds);
  writeNotNull('cost', instance.cost);
  writeNotNull('cost_currency', instance.costCurrency);
  writeNotNull('train_tokens_per_step', instance.trainTokensPerStep);
  writeNotNull('train_tokens', instance.trainTokens);
  writeNotNull('data_tokens', instance.dataTokens);
  writeNotNull('estimated_start_time', instance.estimatedStartTime);
  val['deprecated'] = instance.deprecated;
  val['details'] = instance.details;
  writeNotNull('epochs', instance.epochs);
  writeNotNull('training_steps', instance.trainingSteps);
  val['object'] = _$LegacyJobMetadataOutObjectEnumMap[instance.object]!;
  return val;
}

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
    _$GithubRepositoryInImpl instance) {
  final val = <String, dynamic>{
    'type': _$GithubRepositoryInTypeEnumMap[instance.type]!,
    'name': instance.name,
    'owner': instance.owner,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ref', instance.ref);
  val['weight'] = instance.weight;
  val['token'] = instance.token;
  return val;
}

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

Map<String, dynamic> _$$JobInImplToJson(_$JobInImpl instance) {
  final val = <String, dynamic>{
    'model': _$FineTuneableModelEnumMap[instance.model]!,
    'training_files': instance.trainingFiles,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('validation_files', instance.validationFiles);
  val['hyperparameters'] = instance.hyperparameters;
  writeNotNull('suffix', instance.suffix);
  writeNotNull('integrations', instance.integrations);
  val['repositories'] = instance.repositories;
  writeNotNull('auto_start', instance.autoStart);
  return val;
}

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
      epochs: (json['epochs'] as num?)?.toDouble(),
      fimRatio: (json['fim_ratio'] as num?)?.toDouble() ?? 0.9,
    );

Map<String, dynamic> _$$TrainingParametersInImplToJson(
    _$TrainingParametersInImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('training_steps', instance.trainingSteps);
  val['learning_rate'] = instance.learningRate;
  writeNotNull('epochs', instance.epochs);
  writeNotNull('fim_ratio', instance.fimRatio);
  return val;
}

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
    _$WandbIntegrationImpl instance) {
  final val = <String, dynamic>{
    'type': _$WandbIntegrationTypeEnumMap[instance.type]!,
    'project': instance.project,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['api_key'] = instance.apiKey;
  writeNotNull('run_name', instance.runName);
  return val;
}

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
    _$DetailedJobOutImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'auto_start': instance.autoStart,
    'hyperparameters': instance.hyperparameters,
    'model': _$FineTuneableModelEnumMap[instance.model]!,
    'status': _$DetailedJobOutStatusEnumMap[instance.status]!,
    'job_type': instance.jobType,
    'created_at': instance.createdAt,
    'modified_at': instance.modifiedAt,
    'training_files': instance.trainingFiles,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('validation_files', instance.validationFiles);
  val['object'] = _$DetailedJobOutObjectEnumMap[instance.object]!;
  writeNotNull('fine_tuned_model', instance.fineTunedModel);
  writeNotNull('suffix', instance.suffix);
  writeNotNull('integrations', instance.integrations);
  writeNotNull('trained_tokens', instance.trainedTokens);
  val['repositories'] = instance.repositories;
  writeNotNull('metadata', instance.metadata);
  val['events'] = instance.events;
  val['checkpoints'] = instance.checkpoints;
  return val;
}

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

Map<String, dynamic> _$$EventOutImplToJson(_$EventOutImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  val['created_at'] = instance.createdAt;
  return val;
}

_$MetricOutImpl _$$MetricOutImplFromJson(Map<String, dynamic> json) =>
    _$MetricOutImpl(
      trainLoss: (json['train_loss'] as num?)?.toDouble(),
      validLoss: (json['valid_loss'] as num?)?.toDouble(),
      validMeanTokenAccuracy:
          (json['valid_mean_token_accuracy'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MetricOutImplToJson(_$MetricOutImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('train_loss', instance.trainLoss);
  writeNotNull('valid_loss', instance.validLoss);
  writeNotNull('valid_mean_token_accuracy', instance.validMeanTokenAccuracy);
  return val;
}

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

Map<String, dynamic> _$$FTModelOutImplToJson(_$FTModelOutImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'object': _$FTModelOutObjectEnumMap[instance.object]!,
    'created': instance.created,
    'owned_by': instance.ownedBy,
    'root': instance.root,
    'archived': instance.archived,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  val['capabilities'] = instance.capabilities;
  val['max_context_length'] = instance.maxContextLength;
  val['aliases'] = instance.aliases;
  val['job'] = instance.job;
  return val;
}

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
    _$UpdateFTModelInImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  return val;
}

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
    _$AssistantMessageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('content', instance.content);
  writeNotNull('tool_calls', instance.toolCalls);
  val['prefix'] = instance.prefix;
  val['role'] = _$RoleEnumMap[instance.role]!;
  return val;
}

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
      toolChoice:
          $enumDecodeNullable(_$ToolChoiceEnumMap, json['tool_choice']) ??
              ToolChoice.auto,
      safePrompt: json['safe_prompt'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChatCompletionRequestImplToJson(
    _$ChatCompletionRequestImpl instance) {
  final val = <String, dynamic>{
    'model': instance.model,
    'temperature': instance.temperature,
    'top_p': instance.topP,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('max_tokens', instance.maxTokens);
  writeNotNull('min_tokens', instance.minTokens);
  val['stream'] = instance.stream;
  writeNotNull('stop', const _StopConverter().toJson(instance.stop));
  writeNotNull('random_seed', instance.randomSeed);
  val['messages'] = instance.messages;
  writeNotNull('response_format', instance.responseFormat);
  writeNotNull('tools', instance.tools);
  val['tool_choice'] = _$ToolChoiceEnumMap[instance.toolChoice]!;
  val['safe_prompt'] = instance.safePrompt;
  return val;
}

const _$ToolChoiceEnumMap = {
  ToolChoice.auto: 'auto',
  ToolChoice.none: 'none',
  ToolChoice.any: 'any',
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

_$ContentChunkImpl _$$ContentChunkImplFromJson(Map<String, dynamic> json) =>
    _$ContentChunkImpl(
      type: $enumDecodeNullable(_$ChunkTypesEnumMap, json['type']) ??
          ChunkTypes.text,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$ContentChunkImplToJson(_$ContentChunkImpl instance) =>
    <String, dynamic>{
      'type': _$ChunkTypesEnumMap[instance.type]!,
      'text': instance.text,
    };

const _$ChunkTypesEnumMap = {
  ChunkTypes.text: 'text',
};

_$FIMCompletionRequestImpl _$$FIMCompletionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FIMCompletionRequestImpl(
      model: json['model'] as String?,
      temperature: (json['temperature'] as num?)?.toDouble() ?? 0.7,
      topP: (json['top_p'] as num?)?.toDouble() ?? 1.0,
      maxTokens: (json['max_tokens'] as num?)?.toInt(),
      minTokens: (json['min_tokens'] as num?)?.toInt(),
      stream: json['stream'] as bool? ?? false,
      stop: const _FIMCompletionRequestStopConverter().fromJson(json['stop']),
      randomSeed: (json['random_seed'] as num?)?.toInt(),
      prompt: json['prompt'] as String,
      suffix: json['suffix'] as String? ?? '',
    );

Map<String, dynamic> _$$FIMCompletionRequestImplToJson(
    _$FIMCompletionRequestImpl instance) {
  final val = <String, dynamic>{
    'model': instance.model,
    'temperature': instance.temperature,
    'top_p': instance.topP,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('max_tokens', instance.maxTokens);
  writeNotNull('min_tokens', instance.minTokens);
  val['stream'] = instance.stream;
  writeNotNull(
      'stop', const _FIMCompletionRequestStopConverter().toJson(instance.stop));
  writeNotNull('random_seed', instance.randomSeed);
  val['prompt'] = instance.prompt;
  writeNotNull('suffix', instance.suffix);
  return val;
}

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

Map<String, dynamic> _$$ToolCallImplToJson(_$ToolCallImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['type'] = _$ToolTypesEnumMap[instance.type]!;
  val['function'] = instance.function;
  return val;
}

_$ToolMessageImpl _$$ToolMessageImplFromJson(Map<String, dynamic> json) =>
    _$ToolMessageImpl(
      content: json['content'] as String,
      toolCallId: json['tool_call_id'] as String?,
      name: json['name'] as String?,
      role: $enumDecodeNullable(_$ToolMessageRoleEnumMap, json['role']) ??
          ToolMessageRole.tool,
    );

Map<String, dynamic> _$$ToolMessageImplToJson(_$ToolMessageImpl instance) {
  final val = <String, dynamic>{
    'content': instance.content,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tool_call_id', instance.toolCallId);
  writeNotNull('name', instance.name);
  val['role'] = _$ToolMessageRoleEnumMap[instance.role]!;
  return val;
}

const _$ToolMessageRoleEnumMap = {
  ToolMessageRole.tool: 'tool',
};

_$UserMessageImpl _$$UserMessageImplFromJson(Map<String, dynamic> json) =>
    _$UserMessageImpl(
      content: const _UserMessageContentConverter().fromJson(json['content']),
      role: $enumDecodeNullable(_$UserMessageRoleEnumMap, json['role']) ??
          UserMessageRole.user,
    );

Map<String, dynamic> _$$UserMessageImplToJson(_$UserMessageImpl instance) =>
    <String, dynamic>{
      'content': const _UserMessageContentConverter().toJson(instance.content),
      'role': _$UserMessageRoleEnumMap[instance.role]!,
    };

const _$UserMessageRoleEnumMap = {
  UserMessageRole.user: 'user',
};

_$UnionUserMessageContentArrayImpl _$$UnionUserMessageContentArrayImplFromJson(
        Map<String, dynamic> json) =>
    _$UnionUserMessageContentArrayImpl(
      (json['value'] as List<dynamic>)
          .map((e) => TextChunk.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnionUserMessageContentArrayImplToJson(
        _$UnionUserMessageContentArrayImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$UnionUserMessageContentStringImpl
    _$$UnionUserMessageContentStringImplFromJson(Map<String, dynamic> json) =>
        _$UnionUserMessageContentStringImpl(
          json['value'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$UnionUserMessageContentStringImplToJson(
        _$UnionUserMessageContentStringImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$AgentsCompletionRequestImpl _$$AgentsCompletionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentsCompletionRequestImpl(
      maxTokens: (json['max_tokens'] as num?)?.toInt(),
      minTokens: (json['min_tokens'] as num?)?.toInt(),
      stream: json['stream'] as bool? ?? false,
      stop:
          const _AgentsCompletionRequestStopConverter().fromJson(json['stop']),
      randomSeed: (json['random_seed'] as num?)?.toInt(),
      messages: json['messages'] as List<dynamic>,
      responseFormat: json['response_format'] == null
          ? null
          : ResponseFormat.fromJson(
              json['response_format'] as Map<String, dynamic>),
      tools: (json['tools'] as List<dynamic>?)
          ?.map((e) => Tool.fromJson(e as Map<String, dynamic>))
          .toList(),
      toolChoice:
          $enumDecodeNullable(_$ToolChoiceEnumMap, json['tool_choice']) ??
              ToolChoice.auto,
      agentId: json['agent_id'] as String,
    );

Map<String, dynamic> _$$AgentsCompletionRequestImplToJson(
    _$AgentsCompletionRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('max_tokens', instance.maxTokens);
  writeNotNull('min_tokens', instance.minTokens);
  val['stream'] = instance.stream;
  writeNotNull('stop',
      const _AgentsCompletionRequestStopConverter().toJson(instance.stop));
  writeNotNull('random_seed', instance.randomSeed);
  val['messages'] = instance.messages;
  writeNotNull('response_format', instance.responseFormat);
  writeNotNull('tools', instance.tools);
  val['tool_choice'] = _$ToolChoiceEnumMap[instance.toolChoice]!;
  val['agent_id'] = instance.agentId;
  return val;
}

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

_$EmbeddingRequestImpl _$$EmbeddingRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EmbeddingRequestImpl(
      input: const _EmbeddingRequestInputConverter().fromJson(json['input']),
      model: json['model'] as String,
      encodingFormat: json['encoding_format'] as String? ?? 'float',
    );

Map<String, dynamic> _$$EmbeddingRequestImplToJson(
    _$EmbeddingRequestImpl instance) {
  final val = <String, dynamic>{
    'input': const _EmbeddingRequestInputConverter().toJson(instance.input),
    'model': instance.model,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('encoding_format', instance.encodingFormat);
  return val;
}

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

Map<String, dynamic> _$$ResponseBaseImplToJson(_$ResponseBaseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('object', instance.object);
  writeNotNull('model', instance.model);
  writeNotNull('usage', instance.usage);
  return val;
}

_$ChatCompletionChoiceImpl _$$ChatCompletionChoiceImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatCompletionChoiceImpl(
      index: (json['index'] as num).toInt(),
      message:
          AssistantMessage.fromJson(json['message'] as Map<String, dynamic>),
      finishReason: $enumDecode(
          _$ChatCompletionChoiceFinishReasonEnumMap, json['finish_reason']),
    );

Map<String, dynamic> _$$ChatCompletionChoiceImplToJson(
        _$ChatCompletionChoiceImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finish_reason':
          _$ChatCompletionChoiceFinishReasonEnumMap[instance.finishReason]!,
    };

const _$ChatCompletionChoiceFinishReasonEnumMap = {
  ChatCompletionChoiceFinishReason.stop: 'stop',
  ChatCompletionChoiceFinishReason.length: 'length',
  ChatCompletionChoiceFinishReason.modelLength: 'model_length',
  ChatCompletionChoiceFinishReason.error: 'error',
  ChatCompletionChoiceFinishReason.toolCalls: 'tool_calls',
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
    _$ChatCompletionResponseBaseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('object', instance.object);
  writeNotNull('model', instance.model);
  writeNotNull('usage', instance.usage);
  writeNotNull('created', instance.created);
  return val;
}

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
    _$ChatCompletionResponseImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'object': instance.object,
    'model': instance.model,
    'usage': instance.usage,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created);
  writeNotNull('choices', instance.choices);
  return val;
}

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
    _$FIMCompletionResponseImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'object': instance.object,
    'model': instance.model,
    'usage': instance.usage,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created', instance.created);
  writeNotNull('choices', instance.choices);
  return val;
}

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
    _$EmbeddingResponseDataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('object', instance.object);
  writeNotNull('embedding', instance.embedding);
  writeNotNull('index', instance.index);
  return val;
}

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
    _$CompletionChunkImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('object', instance.object);
  writeNotNull('created', instance.created);
  val['model'] = instance.model;
  writeNotNull('usage', instance.usage);
  val['choices'] = instance.choices;
  return val;
}

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

_$DeltaMessageImpl _$$DeltaMessageImplFromJson(Map<String, dynamic> json) =>
    _$DeltaMessageImpl(
      role: json['role'] as String?,
      content: json['content'] as String?,
      toolCalls: (json['tool_calls'] as List<dynamic>?)
          ?.map((e) => ToolCall.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DeltaMessageImplToJson(_$DeltaMessageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('role', instance.role);
  writeNotNull('content', instance.content);
  writeNotNull('tool_calls', instance.toolCalls);
  return val;
}
