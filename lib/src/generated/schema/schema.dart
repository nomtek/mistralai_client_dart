// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schema.g.dart';
part 'schema.freezed.dart';

// ==========================================
// CLASS: DeleteModelOut
// ==========================================

/// No Description
@freezed
class DeleteModelOut with _$DeleteModelOut {
  const DeleteModelOut._();

  /// Factory constructor for DeleteModelOut
  const factory DeleteModelOut({
    /// The ID of the deleted model.
    required String id,

    /// The object type that was deleted
    @Default('model') String object,

    /// The deletion status
    @Default(true) bool deleted,
  }) = _DeleteModelOut;

  /// Object construction from a JSON representation
  factory DeleteModelOut.fromJson(Map<String, dynamic> json) =>
      _$DeleteModelOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['id', 'object', 'deleted'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'deleted': deleted,
    };
  }
}

// ==========================================
// CLASS: HTTPValidationError
// ==========================================

/// No Description
@freezed
class HTTPValidationError with _$HTTPValidationError {
  const HTTPValidationError._();

  /// Factory constructor for HTTPValidationError
  const factory HTTPValidationError({
    /// No Description
    @JsonKey(includeIfNull: false) List<ValidationError>? detail,
  }) = _HTTPValidationError;

  /// Object construction from a JSON representation
  factory HTTPValidationError.fromJson(Map<String, dynamic> json) =>
      _$HTTPValidationErrorFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['detail'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'detail': detail,
    };
  }
}

// ==========================================
// CLASS: ModelCapabilities
// ==========================================

/// No Description
@freezed
class ModelCapabilities with _$ModelCapabilities {
  const ModelCapabilities._();

  /// Factory constructor for ModelCapabilities
  const factory ModelCapabilities({
    /// No Description
    @JsonKey(name: 'completion_chat') @Default(true) bool completionChat,

    /// No Description
    @JsonKey(name: 'completion_fim') @Default(false) bool completionFim,

    /// No Description
    @JsonKey(name: 'function_calling') @Default(true) bool functionCalling,

    /// No Description
    @JsonKey(name: 'fine_tuning') @Default(false) bool fineTuning,
  }) = _ModelCapabilities;

  /// Object construction from a JSON representation
  factory ModelCapabilities.fromJson(Map<String, dynamic> json) =>
      _$ModelCapabilitiesFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'completion_chat',
    'completion_fim',
    'function_calling',
    'fine_tuning'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'completion_chat': completionChat,
      'completion_fim': completionFim,
      'function_calling': functionCalling,
      'fine_tuning': fineTuning,
    };
  }
}

// ==========================================
// CLASS: ModelCard
// ==========================================

/// No Description
@freezed
class ModelCard with _$ModelCard {
  const ModelCard._();

  /// Factory constructor for ModelCard
  const factory ModelCard({
    /// No Description
    required String id,

    /// No Description
    @Default('model') String object,

    /// No Description
    @JsonKey(includeIfNull: false) int? created,

    /// No Description
    @JsonKey(name: 'owned_by') @Default('mistralai') String ownedBy,

    /// No Description
    @JsonKey(includeIfNull: false) String? root,

    /// No Description
    @Default(false) bool archived,

    /// No Description
    @JsonKey(includeIfNull: false) String? name,

    /// No Description
    @JsonKey(includeIfNull: false) String? description,

    /// No Description
    required ModelCapabilities capabilities,

    /// No Description
    @JsonKey(name: 'max_context_length') @Default(32768) int maxContextLength,

    /// No Description
    @Default([]) List<String> aliases,

    /// No Description
    @JsonKey(includeIfNull: false) String? deprecation,
  }) = _ModelCard;

  /// Object construction from a JSON representation
  factory ModelCard.fromJson(Map<String, dynamic> json) =>
      _$ModelCardFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'object',
    'created',
    'owned_by',
    'root',
    'archived',
    'name',
    'description',
    'capabilities',
    'max_context_length',
    'aliases',
    'deprecation'
  ];

  /// Validation constants
  static const maxContextLengthDefaultValue = 32768;

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'created': created,
      'owned_by': ownedBy,
      'root': root,
      'archived': archived,
      'name': name,
      'description': description,
      'capabilities': capabilities,
      'max_context_length': maxContextLength,
      'aliases': aliases,
      'deprecation': deprecation,
    };
  }
}

// ==========================================
// CLASS: ModelList
// ==========================================

/// No Description
@freezed
class ModelList with _$ModelList {
  const ModelList._();

  /// Factory constructor for ModelList
  const factory ModelList({
    /// No Description
    @Default('list') String object,

    /// No Description
    @JsonKey(includeIfNull: false) List<ModelCard>? data,
  }) = _ModelList;

  /// Object construction from a JSON representation
  factory ModelList.fromJson(Map<String, dynamic> json) =>
      _$ModelListFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['object', 'data'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'object': object,
      'data': data,
    };
  }
}

// ==========================================
// CLASS: ValidationError
// ==========================================

/// No Description
@freezed
class ValidationError with _$ValidationError {
  const ValidationError._();

  /// Factory constructor for ValidationError
  const factory ValidationError({
    /// No Description
    required List<dynamic> loc,

    /// No Description
    required String msg,

    /// No Description
    required String type,
  }) = _ValidationError;

  /// Object construction from a JSON representation
  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['loc', 'msg', 'type'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'loc': loc,
      'msg': msg,
      'type': type,
    };
  }
}

// ==========================================
// ENUM: SampleType
// ==========================================

/// No Description
enum SampleType {
  @JsonValue('pretrain')
  pretrain,
  @JsonValue('instruct')
  instruct,
}

// ==========================================
// ENUM: Source
// ==========================================

/// No Description
enum Source {
  @JsonValue('upload')
  upload,
  @JsonValue('repository')
  repository,
}

// ==========================================
// CLASS: UploadFileOut
// ==========================================

/// No Description
@freezed
class UploadFileOut with _$UploadFileOut {
  const UploadFileOut._();

  /// Factory constructor for UploadFileOut
  const factory UploadFileOut({
    /// The unique identifier of the file.
    required String id,

    /// The object type, which is always "file".
    required String object,

    /// The size of the file, in bytes.
    required int bytes,

    /// The UNIX timestamp (in seconds) of the event.
    @JsonKey(name: 'created_at') required int createdAt,

    /// The name of the uploaded file.
    required String filename,

    /// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
    required Purpose purpose,

    ///
    @JsonKey(name: 'sample_type') required SampleType sampleType,

    /// No Description
    @JsonKey(name: 'num_lines', includeIfNull: false) int? numLines,

    ///
    required Source source,
  }) = _UploadFileOut;

  /// Object construction from a JSON representation
  factory UploadFileOut.fromJson(Map<String, dynamic> json) =>
      _$UploadFileOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'object',
    'bytes',
    'created_at',
    'filename',
    'purpose',
    'sample_type',
    'num_lines',
    'source'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'bytes': bytes,
      'created_at': createdAt,
      'filename': filename,
      'purpose': purpose,
      'sample_type': sampleType,
      'num_lines': numLines,
      'source': source,
    };
  }
}

// ==========================================
// ENUM: Purpose
// ==========================================

/// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
enum Purpose {
  @JsonValue('fine-tune')
  fineTune,
}

// ==========================================
// CLASS: FileSchema
// ==========================================

/// No Description
@freezed
class FileSchema with _$FileSchema {
  const FileSchema._();

  /// Factory constructor for FileSchema
  const factory FileSchema({
    /// The unique identifier of the file.
    required String id,

    /// The object type, which is always "file".
    required String object,

    /// The size of the file, in bytes.
    required int bytes,

    /// The UNIX timestamp (in seconds) of the event.
    @JsonKey(name: 'created_at') required int createdAt,

    /// The name of the uploaded file.
    required String filename,

    /// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
    required FileSchemaPurpose purpose,

    ///
    @JsonKey(name: 'sample_type') required SampleType sampleType,

    /// No Description
    @JsonKey(name: 'num_lines', includeIfNull: false) int? numLines,

    ///
    required Source source,
  }) = _FileSchema;

  /// Object construction from a JSON representation
  factory FileSchema.fromJson(Map<String, dynamic> json) =>
      _$FileSchemaFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'object',
    'bytes',
    'created_at',
    'filename',
    'purpose',
    'sample_type',
    'num_lines',
    'source'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'bytes': bytes,
      'created_at': createdAt,
      'filename': filename,
      'purpose': purpose,
      'sample_type': sampleType,
      'num_lines': numLines,
      'source': source,
    };
  }
}

// ==========================================
// ENUM: FileSchemaPurpose
// ==========================================

/// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
enum FileSchemaPurpose {
  @JsonValue('fine-tune')
  fineTune,
}

// ==========================================
// CLASS: ListFilesOut
// ==========================================

/// No Description
@freezed
class ListFilesOut with _$ListFilesOut {
  const ListFilesOut._();

  /// Factory constructor for ListFilesOut
  const factory ListFilesOut({
    /// No Description
    required List<FileSchema> data,

    /// No Description
    required String object,
  }) = _ListFilesOut;

  /// Object construction from a JSON representation
  factory ListFilesOut.fromJson(Map<String, dynamic> json) =>
      _$ListFilesOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['data', 'object'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'data': data,
      'object': object,
    };
  }
}

// ==========================================
// CLASS: RetrieveFileOut
// ==========================================

/// No Description
@freezed
class RetrieveFileOut with _$RetrieveFileOut {
  const RetrieveFileOut._();

  /// Factory constructor for RetrieveFileOut
  const factory RetrieveFileOut({
    /// The unique identifier of the file.
    required String id,

    /// The object type, which is always "file".
    required String object,

    /// The size of the file, in bytes.
    required int bytes,

    /// The UNIX timestamp (in seconds) of the event.
    @JsonKey(name: 'created_at') required int createdAt,

    /// The name of the uploaded file.
    required String filename,

    /// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
    required RetrieveFileOutPurpose purpose,

    ///
    @JsonKey(name: 'sample_type') required SampleType sampleType,

    /// No Description
    @JsonKey(name: 'num_lines', includeIfNull: false) int? numLines,

    ///
    required Source source,
  }) = _RetrieveFileOut;

  /// Object construction from a JSON representation
  factory RetrieveFileOut.fromJson(Map<String, dynamic> json) =>
      _$RetrieveFileOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'object',
    'bytes',
    'created_at',
    'filename',
    'purpose',
    'sample_type',
    'num_lines',
    'source'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'bytes': bytes,
      'created_at': createdAt,
      'filename': filename,
      'purpose': purpose,
      'sample_type': sampleType,
      'num_lines': numLines,
      'source': source,
    };
  }
}

// ==========================================
// ENUM: RetrieveFileOutPurpose
// ==========================================

/// The intended purpose of the uploaded file. Only accepts fine-tuning (`fine-tune`) for now.
enum RetrieveFileOutPurpose {
  @JsonValue('fine-tune')
  fineTune,
}

// ==========================================
// CLASS: DeleteFileOut
// ==========================================

/// No Description
@freezed
class DeleteFileOut with _$DeleteFileOut {
  const DeleteFileOut._();

  /// Factory constructor for DeleteFileOut
  const factory DeleteFileOut({
    /// The ID of the deleted file.
    required String id,

    /// The object type that was deleted
    required String object,

    /// The deletion status.
    required bool deleted,
  }) = _DeleteFileOut;

  /// Object construction from a JSON representation
  factory DeleteFileOut.fromJson(Map<String, dynamic> json) =>
      _$DeleteFileOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['id', 'object', 'deleted'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'deleted': deleted,
    };
  }
}

// ==========================================
// ENUM: FineTuneableModel
// ==========================================

/// The name of the model to fine-tune.
enum FineTuneableModel {
  @JsonValue('open-mistral-7b')
  openMistral7b,
  @JsonValue('mistral-small-latest')
  mistralSmallLatest,
  @JsonValue('codestral-latest')
  codestralLatest,
  @JsonValue('mistral-large-latest')
  mistralLargeLatest,
  @JsonValue('open-mistral-nemo')
  openMistralNemo,
}

// ==========================================
// CLASS: GithubRepositoryOut
// ==========================================

/// No Description
@freezed
class GithubRepositoryOut with _$GithubRepositoryOut {
  const GithubRepositoryOut._();

  /// Factory constructor for GithubRepositoryOut
  const factory GithubRepositoryOut({
    ///
    @Default(Type.github) Type type,

    /// No Description
    required String name,

    /// No Description
    required String owner,

    /// No Description
    @JsonKey(includeIfNull: false) String? ref,

    /// No Description
    @Default(1.0) double weight,

    /// No Description
    @JsonKey(name: 'commit_id') required String commitId,
  }) = _GithubRepositoryOut;

  /// Object construction from a JSON representation
  factory GithubRepositoryOut.fromJson(Map<String, dynamic> json) =>
      _$GithubRepositoryOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'type',
    'name',
    'owner',
    'ref',
    'weight',
    'commit_id'
  ];

  /// Validation constants
  static const weightDefaultValue = 1.0;
  static const weightMinValue = 0.0;
  static const commitIdMinLengthValue = 40;
  static const commitIdMaxLengthValue = 40;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (weight <= weightMinValue) {
      return "The value of 'weight' cannot be <= $weightMinValue";
    }
    if (commitId.length < commitIdMinLengthValue) {
      return "The value of 'commitId' cannot be < $commitIdMinLengthValue characters";
    }
    if (commitId.length > commitIdMaxLengthValue) {
      return "The length of 'commitId' cannot be > $commitIdMaxLengthValue characters";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'name': name,
      'owner': owner,
      'ref': ref,
      'weight': weight,
      'commit_id': commitId,
    };
  }
}

// ==========================================
// ENUM: Type
// ==========================================

/// No Description
enum Type {
  @JsonValue('github')
  github,
}

// ==========================================
// CLASS: JobMetadataOut
// ==========================================

/// No Description
@freezed
class JobMetadataOut with _$JobMetadataOut {
  const JobMetadataOut._();

  /// Factory constructor for JobMetadataOut
  const factory JobMetadataOut({
    /// No Description
    @JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
    int? expectedDurationSeconds,

    /// No Description
    @JsonKey(includeIfNull: false) double? cost,

    /// No Description
    @JsonKey(name: 'cost_currency', includeIfNull: false) String? costCurrency,

    /// No Description
    @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
    int? trainTokensPerStep,

    /// No Description
    @JsonKey(name: 'train_tokens', includeIfNull: false) int? trainTokens,

    /// No Description
    @JsonKey(name: 'data_tokens', includeIfNull: false) int? dataTokens,

    /// No Description
    @JsonKey(name: 'estimated_start_time', includeIfNull: false)
    int? estimatedStartTime,
  }) = _JobMetadataOut;

  /// Object construction from a JSON representation
  factory JobMetadataOut.fromJson(Map<String, dynamic> json) =>
      _$JobMetadataOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'expected_duration_seconds',
    'cost',
    'cost_currency',
    'train_tokens_per_step',
    'train_tokens',
    'data_tokens',
    'estimated_start_time'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'expected_duration_seconds': expectedDurationSeconds,
      'cost': cost,
      'cost_currency': costCurrency,
      'train_tokens_per_step': trainTokensPerStep,
      'train_tokens': trainTokens,
      'data_tokens': dataTokens,
      'estimated_start_time': estimatedStartTime,
    };
  }
}

// ==========================================
// CLASS: JobOut
// ==========================================

/// No Description
@freezed
class JobOut with _$JobOut {
  const JobOut._();

  /// Factory constructor for JobOut
  const factory JobOut({
    /// The ID of the job.
    required String id,

    /// No Description
    @JsonKey(name: 'auto_start') required bool autoStart,

    /// No Description
    required TrainingParameters hyperparameters,

    /// The name of the model to fine-tune.
    required FineTuneableModel model,

    /// The current status of the fine-tuning job.
    required Status status,

    /// The type of job (`FT` for fine-tuning).
    @JsonKey(name: 'job_type') required String jobType,

    /// The UNIX timestamp (in seconds) for when the fine-tuning job was created.
    @JsonKey(name: 'created_at') required int createdAt,

    /// The UNIX timestamp (in seconds) for when the fine-tuning job was last modified.
    @JsonKey(name: 'modified_at') required int modifiedAt,

    /// A list containing the IDs of uploaded files that contain training data.
    @JsonKey(name: 'training_files') required List<String> trainingFiles,

    /// A list containing the IDs of uploaded files that contain validation data.
    @JsonKey(name: 'validation_files', includeIfNull: false)
    @Default([])
    List<String>? validationFiles,

    /// The object type of the fine-tuning job.
    @Default(JobOutObject.job) JobOutObject object,

    /// The name of the fine-tuned model that is being created. The value will be `null` if the fine-tuning job is still running.
    @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
    String? fineTunedModel,

    /// Optional text/code that adds more context for the model. When given a `prompt` and a `suffix` the model will fill what is between them. When `suffix` is not provided, the model will simply execute completion starting with `prompt`.
    @JsonKey(includeIfNull: false) String? suffix,

    /// A list of integrations enabled for your fine-tuning job.
    @JsonKey(includeIfNull: false) List<WandbIntegrationOut>? integrations,

    /// Total number of tokens trained.
    @JsonKey(name: 'trained_tokens', includeIfNull: false) int? trainedTokens,

    /// No Description
    @Default([]) List<GithubRepositoryOut> repositories,

    /// No Description
    @JsonKey(includeIfNull: false) JobMetadataOut? metadata,
  }) = _JobOut;

  /// Object construction from a JSON representation
  factory JobOut.fromJson(Map<String, dynamic> json) => _$JobOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'auto_start',
    'hyperparameters',
    'model',
    'status',
    'job_type',
    'created_at',
    'modified_at',
    'training_files',
    'validation_files',
    'object',
    'fine_tuned_model',
    'suffix',
    'integrations',
    'trained_tokens',
    'repositories',
    'metadata'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'auto_start': autoStart,
      'hyperparameters': hyperparameters,
      'model': model,
      'status': status,
      'job_type': jobType,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'training_files': trainingFiles,
      'validation_files': validationFiles,
      'object': object,
      'fine_tuned_model': fineTunedModel,
      'suffix': suffix,
      'integrations': integrations,
      'trained_tokens': trainedTokens,
      'repositories': repositories,
      'metadata': metadata,
    };
  }
}

// ==========================================
// ENUM: Status
// ==========================================

/// The current status of the fine-tuning job.
enum Status {
  @JsonValue('QUEUED')
  queued,
  @JsonValue('STARTED')
  started,
  @JsonValue('VALIDATING')
  validating,
  @JsonValue('VALIDATED')
  validated,
  @JsonValue('RUNNING')
  running,
  @JsonValue('FAILED_VALIDATION')
  failedValidation,
  @JsonValue('FAILED')
  failed,
  @JsonValue('SUCCESS')
  success,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('CANCELLATION_REQUESTED')
  cancellationRequested,
}

// ==========================================
// ENUM: JobOutObject
// ==========================================

/// The object type of the fine-tuning job.
enum JobOutObject {
  @JsonValue('job')
  job,
}

// ==========================================
// CLASS: JobsOut
// ==========================================

/// No Description
@freezed
class JobsOut with _$JobsOut {
  const JobsOut._();

  /// Factory constructor for JobsOut
  const factory JobsOut({
    /// No Description
    @Default([]) List<JobOut> data,

    ///
    @Default(JobsOutObject.list) JobsOutObject object,

    /// No Description
    required int total,
  }) = _JobsOut;

  /// Object construction from a JSON representation
  factory JobsOut.fromJson(Map<String, dynamic> json) =>
      _$JobsOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['data', 'object', 'total'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'data': data,
      'object': object,
      'total': total,
    };
  }
}

// ==========================================
// ENUM: JobsOutObject
// ==========================================

/// No Description
enum JobsOutObject {
  @JsonValue('list')
  list,
}

// ==========================================
// CLASS: TrainingParameters
// ==========================================

/// No Description
@freezed
class TrainingParameters with _$TrainingParameters {
  const TrainingParameters._();

  /// Factory constructor for TrainingParameters
  const factory TrainingParameters({
    /// No Description
    @JsonKey(name: 'training_steps', includeIfNull: false) int? trainingSteps,

    /// No Description
    @JsonKey(name: 'learning_rate') @Default(0.0001) double learningRate,

    /// No Description
    @JsonKey(name: 'weight_decay', includeIfNull: false)
    @Default(0.1)
    double? weightDecay,

    /// No Description
    @JsonKey(name: 'warmup_fraction', includeIfNull: false)
    @Default(0.05)
    double? warmupFraction,

    /// No Description
    @JsonKey(includeIfNull: false) double? epochs,

    /// No Description
    @JsonKey(name: 'fim_ratio', includeIfNull: false)
    @Default(0.9)
    double? fimRatio,
  }) = _TrainingParameters;

  /// Object construction from a JSON representation
  factory TrainingParameters.fromJson(Map<String, dynamic> json) =>
      _$TrainingParametersFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'training_steps',
    'learning_rate',
    'weight_decay',
    'warmup_fraction',
    'epochs',
    'fim_ratio'
  ];

  /// Validation constants
  static const trainingStepsMinValue = 1;
  static const learningRateDefaultValue = 0.0001;
  static const learningRateMinValue = 1e-8;
  static const learningRateMaxValue = 1.0;
  static const weightDecayDefaultValue = 0.1;
  static const weightDecayMinValue = 0.0;
  static const weightDecayMaxValue = 1.0;
  static const warmupFractionDefaultValue = 0.05;
  static const warmupFractionMinValue = 0.0;
  static const warmupFractionMaxValue = 1.0;
  static const epochsMinValue = 0.01;
  static const fimRatioDefaultValue = 0.9;
  static const fimRatioMinValue = 0.0;
  static const fimRatioMaxValue = 1.0;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (trainingSteps != null && trainingSteps! < trainingStepsMinValue) {
      return "The value of 'trainingSteps' cannot be < $trainingStepsMinValue";
    }
    if (learningRate < learningRateMinValue) {
      return "The value of 'learningRate' cannot be < $learningRateMinValue";
    }
    if (learningRate > learningRateMaxValue) {
      return "The value of 'learningRate' cannot be > $learningRateMaxValue";
    }
    if (weightDecay != null && weightDecay! < weightDecayMinValue) {
      return "The value of 'weightDecay' cannot be < $weightDecayMinValue";
    }
    if (weightDecay != null && weightDecay! > weightDecayMaxValue) {
      return "The value of 'weightDecay' cannot be > $weightDecayMaxValue";
    }
    if (warmupFraction != null && warmupFraction! < warmupFractionMinValue) {
      return "The value of 'warmupFraction' cannot be < $warmupFractionMinValue";
    }
    if (warmupFraction != null && warmupFraction! > warmupFractionMaxValue) {
      return "The value of 'warmupFraction' cannot be > $warmupFractionMaxValue";
    }
    if (epochs != null && epochs! < epochsMinValue) {
      return "The value of 'epochs' cannot be < $epochsMinValue";
    }
    if (fimRatio != null && fimRatio! < fimRatioMinValue) {
      return "The value of 'fimRatio' cannot be < $fimRatioMinValue";
    }
    if (fimRatio != null && fimRatio! > fimRatioMaxValue) {
      return "The value of 'fimRatio' cannot be > $fimRatioMaxValue";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'training_steps': trainingSteps,
      'learning_rate': learningRate,
      'weight_decay': weightDecay,
      'warmup_fraction': warmupFraction,
      'epochs': epochs,
      'fim_ratio': fimRatio,
    };
  }
}

// ==========================================
// CLASS: WandbIntegrationOut
// ==========================================

/// No Description
@freezed
class WandbIntegrationOut with _$WandbIntegrationOut {
  const WandbIntegrationOut._();

  /// Factory constructor for WandbIntegrationOut
  const factory WandbIntegrationOut({
    ///
    @Default(WandbIntegrationOutType.wandb) WandbIntegrationOutType type,

    /// The name of the project that the new run will be created under.
    required String project,

    /// A display name to set for the run. If not set, will use the job ID as the name.
    @JsonKey(includeIfNull: false) String? name,

    /// No Description
    @JsonKey(name: 'run_name', includeIfNull: false) String? runName,
  }) = _WandbIntegrationOut;

  /// Object construction from a JSON representation
  factory WandbIntegrationOut.fromJson(Map<String, dynamic> json) =>
      _$WandbIntegrationOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'type',
    'project',
    'name',
    'run_name'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'project': project,
      'name': name,
      'run_name': runName,
    };
  }
}

// ==========================================
// ENUM: WandbIntegrationOutType
// ==========================================

/// No Description
enum WandbIntegrationOutType {
  @JsonValue('wandb')
  wandb,
}

// ==========================================
// CLASS: LegacyJobMetadataOut
// ==========================================

/// No Description
@freezed
class LegacyJobMetadataOut with _$LegacyJobMetadataOut {
  const LegacyJobMetadataOut._();

  /// Factory constructor for LegacyJobMetadataOut
  const factory LegacyJobMetadataOut({
    /// The approximated time (in seconds) for the fine-tuning process to complete.
    @JsonKey(name: 'expected_duration_seconds', includeIfNull: false)
    int? expectedDurationSeconds,

    /// The cost of the fine-tuning job.
    @JsonKey(includeIfNull: false) double? cost,

    /// The currency used for the fine-tuning job cost.
    @JsonKey(name: 'cost_currency', includeIfNull: false) String? costCurrency,

    /// The number of tokens consumed by one training step.
    @JsonKey(name: 'train_tokens_per_step', includeIfNull: false)
    int? trainTokensPerStep,

    /// The total number of tokens used during the fine-tuning process.
    @JsonKey(name: 'train_tokens', includeIfNull: false) int? trainTokens,

    /// The total number of tokens in the training dataset.
    @JsonKey(name: 'data_tokens', includeIfNull: false) int? dataTokens,

    /// No Description
    @JsonKey(name: 'estimated_start_time', includeIfNull: false)
    int? estimatedStartTime,

    /// No Description
    @Default(true) bool deprecated,

    /// No Description
    required String details,

    /// The number of complete passes through the entire training dataset.
    @JsonKey(includeIfNull: false) double? epochs,

    /// The number of training steps to perform. A training step refers to a single update of the model weights during the fine-tuning process. This update is typically calculated using a batch of samples from the training dataset.
    @JsonKey(name: 'training_steps', includeIfNull: false) int? trainingSteps,

    ///
    @Default(LegacyJobMetadataOutObject.jobMetadata)
    LegacyJobMetadataOutObject object,
  }) = _LegacyJobMetadataOut;

  /// Object construction from a JSON representation
  factory LegacyJobMetadataOut.fromJson(Map<String, dynamic> json) =>
      _$LegacyJobMetadataOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'expected_duration_seconds',
    'cost',
    'cost_currency',
    'train_tokens_per_step',
    'train_tokens',
    'data_tokens',
    'estimated_start_time',
    'deprecated',
    'details',
    'epochs',
    'training_steps',
    'object'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'expected_duration_seconds': expectedDurationSeconds,
      'cost': cost,
      'cost_currency': costCurrency,
      'train_tokens_per_step': trainTokensPerStep,
      'train_tokens': trainTokens,
      'data_tokens': dataTokens,
      'estimated_start_time': estimatedStartTime,
      'deprecated': deprecated,
      'details': details,
      'epochs': epochs,
      'training_steps': trainingSteps,
      'object': object,
    };
  }
}

// ==========================================
// ENUM: LegacyJobMetadataOutObject
// ==========================================

/// No Description
enum LegacyJobMetadataOutObject {
  @JsonValue('job.metadata')
  jobMetadata,
}

// ==========================================
// CLASS: GithubRepositoryIn
// ==========================================

/// No Description
@freezed
class GithubRepositoryIn with _$GithubRepositoryIn {
  const GithubRepositoryIn._();

  /// Factory constructor for GithubRepositoryIn
  const factory GithubRepositoryIn({
    ///
    @Default(GithubRepositoryInType.github) GithubRepositoryInType type,

    /// No Description
    required String name,

    /// No Description
    required String owner,

    /// No Description
    @JsonKey(includeIfNull: false) String? ref,

    /// No Description
    @Default(1.0) double weight,

    /// No Description
    required String token,
  }) = _GithubRepositoryIn;

  /// Object construction from a JSON representation
  factory GithubRepositoryIn.fromJson(Map<String, dynamic> json) =>
      _$GithubRepositoryInFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'type',
    'name',
    'owner',
    'ref',
    'weight',
    'token'
  ];

  /// Validation constants
  static const weightDefaultValue = 1.0;
  static const weightMinValue = 0.0;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (weight <= weightMinValue) {
      return "The value of 'weight' cannot be <= $weightMinValue";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'name': name,
      'owner': owner,
      'ref': ref,
      'weight': weight,
      'token': token,
    };
  }
}

// ==========================================
// ENUM: GithubRepositoryInType
// ==========================================

/// No Description
enum GithubRepositoryInType {
  @JsonValue('github')
  github,
}

// ==========================================
// CLASS: JobIn
// ==========================================

/// No Description
@freezed
class JobIn with _$JobIn {
  const JobIn._();

  /// Factory constructor for JobIn
  const factory JobIn({
    /// The name of the model to fine-tune.
    required FineTuneableModel model,

    /// No Description
    @JsonKey(name: 'training_files')
    @Default([])
    List<TrainingFile> trainingFiles,

    /// A list containing the IDs of uploaded files that contain validation data. If you provide these files, the data is used to generate validation metrics periodically during fine-tuning. These metrics can be viewed in `checkpoints` when getting the status of a running fine-tuning job. The same data should not be present in both train and validation files.
    @JsonKey(name: 'validation_files', includeIfNull: false)
    List<String>? validationFiles,

    /// The fine-tuning hyperparameter settings used in a fine-tune job.
    required TrainingParametersIn hyperparameters,

    /// A string that will be added to your fine-tuning model name. For example, a suffix of "my-great-model" would produce a model name like `ft:open-mistral-7b:my-great-model:xxx...`
    @JsonKey(includeIfNull: false) String? suffix,

    /// A list of integrations to enable for your fine-tuning job.
    @JsonKey(includeIfNull: false) List<WandbIntegration>? integrations,

    /// No Description
    @Default([]) List<GithubRepositoryIn> repositories,

    /// This field will be required in a future release.
    @JsonKey(name: 'auto_start', includeIfNull: false) bool? autoStart,
  }) = _JobIn;

  /// Object construction from a JSON representation
  factory JobIn.fromJson(Map<String, dynamic> json) => _$JobInFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'model',
    'training_files',
    'validation_files',
    'hyperparameters',
    'suffix',
    'integrations',
    'repositories',
    'auto_start'
  ];

  /// Validation constants
  static const suffixMaxLengthValue = 18;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (suffix != null && suffix!.length > suffixMaxLengthValue) {
      return "The length of 'suffix' cannot be > $suffixMaxLengthValue characters";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'model': model,
      'training_files': trainingFiles,
      'validation_files': validationFiles,
      'hyperparameters': hyperparameters,
      'suffix': suffix,
      'integrations': integrations,
      'repositories': repositories,
      'auto_start': autoStart,
    };
  }
}

// ==========================================
// CLASS: TrainingFile
// ==========================================

/// No Description
@freezed
class TrainingFile with _$TrainingFile {
  const TrainingFile._();

  /// Factory constructor for TrainingFile
  const factory TrainingFile({
    /// No Description
    @JsonKey(name: 'file_id') required String fileId,

    /// No Description
    @Default(1.0) double weight,
  }) = _TrainingFile;

  /// Object construction from a JSON representation
  factory TrainingFile.fromJson(Map<String, dynamic> json) =>
      _$TrainingFileFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['file_id', 'weight'];

  /// Validation constants
  static const weightDefaultValue = 1.0;
  static const weightMinValue = 0.0;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (weight <= weightMinValue) {
      return "The value of 'weight' cannot be <= $weightMinValue";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'file_id': fileId,
      'weight': weight,
    };
  }
}

// ==========================================
// CLASS: TrainingParametersIn
// ==========================================

/// The fine-tuning hyperparameter settings used in a fine-tune job.
@freezed
class TrainingParametersIn with _$TrainingParametersIn {
  const TrainingParametersIn._();

  /// Factory constructor for TrainingParametersIn
  const factory TrainingParametersIn({
    /// The number of training steps to perform. A training step refers to a single update of the model weights during the fine-tuning process. This update is typically calculated using a batch of samples from the training dataset.
    @JsonKey(name: 'training_steps', includeIfNull: false) int? trainingSteps,

    /// A parameter describing how much to adjust the pre-trained model's weights in response to the estimated error each time the weights are updated during the fine-tuning process.
    @JsonKey(name: 'learning_rate') @Default(0.0001) double learningRate,

    /// (Advanced Usage) Weight decay adds a term to the loss function that is proportional to the sum of the squared weights. This term reduces the magnitude of the weights and prevents them from growing too large.
    @JsonKey(name: 'weight_decay', includeIfNull: false)
    @Default(0.1)
    double? weightDecay,

    /// (Advanced Usage) A parameter that specifies the percentage of the total training steps at which the learning rate warm-up phase ends. During this phase, the learning rate gradually increases from a small value to the initial learning rate, helping to stabilize the training process and improve convergence. Similar to `pct_start` in [mistral-finetune](https://github.com/mistralai/mistral-finetune)
    @JsonKey(name: 'warmup_fraction', includeIfNull: false)
    @Default(0.05)
    double? warmupFraction,

    /// No Description
    @JsonKey(includeIfNull: false) double? epochs,

    /// No Description
    @JsonKey(name: 'fim_ratio', includeIfNull: false)
    @Default(0.9)
    double? fimRatio,
  }) = _TrainingParametersIn;

  /// Object construction from a JSON representation
  factory TrainingParametersIn.fromJson(Map<String, dynamic> json) =>
      _$TrainingParametersInFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'training_steps',
    'learning_rate',
    'weight_decay',
    'warmup_fraction',
    'epochs',
    'fim_ratio'
  ];

  /// Validation constants
  static const trainingStepsMinValue = 1;
  static const learningRateDefaultValue = 0.0001;
  static const learningRateMinValue = 1e-8;
  static const learningRateMaxValue = 1.0;
  static const weightDecayDefaultValue = 0.1;
  static const weightDecayMinValue = 0.0;
  static const weightDecayMaxValue = 1.0;
  static const warmupFractionDefaultValue = 0.05;
  static const warmupFractionMinValue = 0.0;
  static const warmupFractionMaxValue = 1.0;
  static const epochsMinValue = 0.01;
  static const fimRatioDefaultValue = 0.9;
  static const fimRatioMinValue = 0.0;
  static const fimRatioMaxValue = 1.0;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (trainingSteps != null && trainingSteps! < trainingStepsMinValue) {
      return "The value of 'trainingSteps' cannot be < $trainingStepsMinValue";
    }
    if (learningRate < learningRateMinValue) {
      return "The value of 'learningRate' cannot be < $learningRateMinValue";
    }
    if (learningRate > learningRateMaxValue) {
      return "The value of 'learningRate' cannot be > $learningRateMaxValue";
    }
    if (weightDecay != null && weightDecay! < weightDecayMinValue) {
      return "The value of 'weightDecay' cannot be < $weightDecayMinValue";
    }
    if (weightDecay != null && weightDecay! > weightDecayMaxValue) {
      return "The value of 'weightDecay' cannot be > $weightDecayMaxValue";
    }
    if (warmupFraction != null && warmupFraction! < warmupFractionMinValue) {
      return "The value of 'warmupFraction' cannot be < $warmupFractionMinValue";
    }
    if (warmupFraction != null && warmupFraction! > warmupFractionMaxValue) {
      return "The value of 'warmupFraction' cannot be > $warmupFractionMaxValue";
    }
    if (epochs != null && epochs! < epochsMinValue) {
      return "The value of 'epochs' cannot be < $epochsMinValue";
    }
    if (fimRatio != null && fimRatio! < fimRatioMinValue) {
      return "The value of 'fimRatio' cannot be < $fimRatioMinValue";
    }
    if (fimRatio != null && fimRatio! > fimRatioMaxValue) {
      return "The value of 'fimRatio' cannot be > $fimRatioMaxValue";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'training_steps': trainingSteps,
      'learning_rate': learningRate,
      'weight_decay': weightDecay,
      'warmup_fraction': warmupFraction,
      'epochs': epochs,
      'fim_ratio': fimRatio,
    };
  }
}

// ==========================================
// CLASS: WandbIntegration
// ==========================================

/// No Description
@freezed
class WandbIntegration with _$WandbIntegration {
  const WandbIntegration._();

  /// Factory constructor for WandbIntegration
  const factory WandbIntegration({
    ///
    @Default(WandbIntegrationType.wandb) WandbIntegrationType type,

    /// The name of the project that the new run will be created under.
    required String project,

    /// A display name to set for the run. If not set, will use the job ID as the name.
    @JsonKey(includeIfNull: false) String? name,

    /// The WandB API key to use for authentication.
    @JsonKey(name: 'api_key') required String apiKey,

    /// No Description
    @JsonKey(name: 'run_name', includeIfNull: false) String? runName,
  }) = _WandbIntegration;

  /// Object construction from a JSON representation
  factory WandbIntegration.fromJson(Map<String, dynamic> json) =>
      _$WandbIntegrationFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'type',
    'project',
    'name',
    'api_key',
    'run_name'
  ];

  /// Validation constants
  static const apiKeyMinLengthValue = 40;
  static const apiKeyMaxLengthValue = 40;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (apiKey.length < apiKeyMinLengthValue) {
      return "The value of 'apiKey' cannot be < $apiKeyMinLengthValue characters";
    }
    if (apiKey.length > apiKeyMaxLengthValue) {
      return "The length of 'apiKey' cannot be > $apiKeyMaxLengthValue characters";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'project': project,
      'name': name,
      'api_key': apiKey,
      'run_name': runName,
    };
  }
}

// ==========================================
// ENUM: WandbIntegrationType
// ==========================================

/// No Description
enum WandbIntegrationType {
  @JsonValue('wandb')
  wandb,
}

// ==========================================
// CLASS: CheckpointOut
// ==========================================

/// No Description
@freezed
class CheckpointOut with _$CheckpointOut {
  const CheckpointOut._();

  /// Factory constructor for CheckpointOut
  const factory CheckpointOut({
    /// Metrics at the step number during the fine-tuning job. Use these metrics to assess if the training is going smoothly (loss should decrease, token accuracy should increase).
    required MetricOut metrics,

    /// The step number that the checkpoint was created at.
    @JsonKey(name: 'step_number') required int stepNumber,

    /// The UNIX timestamp (in seconds) for when the checkpoint was created.
    @JsonKey(name: 'created_at') required int createdAt,
  }) = _CheckpointOut;

  /// Object construction from a JSON representation
  factory CheckpointOut.fromJson(Map<String, dynamic> json) =>
      _$CheckpointOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'metrics',
    'step_number',
    'created_at'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'metrics': metrics,
      'step_number': stepNumber,
      'created_at': createdAt,
    };
  }
}

// ==========================================
// CLASS: DetailedJobOut
// ==========================================

/// No Description
@freezed
class DetailedJobOut with _$DetailedJobOut {
  const DetailedJobOut._();

  /// Factory constructor for DetailedJobOut
  const factory DetailedJobOut({
    /// No Description
    required String id,

    /// No Description
    @JsonKey(name: 'auto_start') required bool autoStart,

    /// No Description
    required TrainingParameters hyperparameters,

    /// The name of the model to fine-tune.
    required FineTuneableModel model,

    ///
    required DetailedJobOutStatus status,

    /// No Description
    @JsonKey(name: 'job_type') required String jobType,

    /// No Description
    @JsonKey(name: 'created_at') required int createdAt,

    /// No Description
    @JsonKey(name: 'modified_at') required int modifiedAt,

    /// No Description
    @JsonKey(name: 'training_files') required List<String> trainingFiles,

    /// No Description
    @JsonKey(name: 'validation_files', includeIfNull: false)
    @Default([])
    List<String>? validationFiles,

    ///
    @Default(DetailedJobOutObject.job) DetailedJobOutObject object,

    /// No Description
    @JsonKey(name: 'fine_tuned_model', includeIfNull: false)
    String? fineTunedModel,

    /// No Description
    @JsonKey(includeIfNull: false) String? suffix,

    /// No Description
    @JsonKey(includeIfNull: false) List<WandbIntegrationOut>? integrations,

    /// No Description
    @JsonKey(name: 'trained_tokens', includeIfNull: false) int? trainedTokens,

    /// No Description
    @Default([]) List<GithubRepositoryOut> repositories,

    /// No Description
    @JsonKey(includeIfNull: false) JobMetadataOut? metadata,

    /// Event items are created every time the status of a fine-tuning job changes. The timestamped list of all events is accessible here.
    @Default([]) List<EventOut> events,

    /// No Description
    @Default([]) List<CheckpointOut> checkpoints,
  }) = _DetailedJobOut;

  /// Object construction from a JSON representation
  factory DetailedJobOut.fromJson(Map<String, dynamic> json) =>
      _$DetailedJobOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'auto_start',
    'hyperparameters',
    'model',
    'status',
    'job_type',
    'created_at',
    'modified_at',
    'training_files',
    'validation_files',
    'object',
    'fine_tuned_model',
    'suffix',
    'integrations',
    'trained_tokens',
    'repositories',
    'metadata',
    'events',
    'checkpoints'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'auto_start': autoStart,
      'hyperparameters': hyperparameters,
      'model': model,
      'status': status,
      'job_type': jobType,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'training_files': trainingFiles,
      'validation_files': validationFiles,
      'object': object,
      'fine_tuned_model': fineTunedModel,
      'suffix': suffix,
      'integrations': integrations,
      'trained_tokens': trainedTokens,
      'repositories': repositories,
      'metadata': metadata,
      'events': events,
      'checkpoints': checkpoints,
    };
  }
}

// ==========================================
// ENUM: DetailedJobOutStatus
// ==========================================

/// No Description
enum DetailedJobOutStatus {
  @JsonValue('QUEUED')
  queued,
  @JsonValue('STARTED')
  started,
  @JsonValue('VALIDATING')
  validating,
  @JsonValue('VALIDATED')
  validated,
  @JsonValue('RUNNING')
  running,
  @JsonValue('FAILED_VALIDATION')
  failedValidation,
  @JsonValue('FAILED')
  failed,
  @JsonValue('SUCCESS')
  success,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('CANCELLATION_REQUESTED')
  cancellationRequested,
}

// ==========================================
// ENUM: DetailedJobOutObject
// ==========================================

/// No Description
enum DetailedJobOutObject {
  @JsonValue('job')
  job,
}

// ==========================================
// CLASS: EventOut
// ==========================================

/// No Description
@freezed
class EventOut with _$EventOut {
  const EventOut._();

  /// Factory constructor for EventOut
  const factory EventOut({
    /// The name of the event.
    required String name,

    /// No Description
    @JsonKey(includeIfNull: false) Map<String, dynamic>? data,

    /// The UNIX timestamp (in seconds) of the event.
    @JsonKey(name: 'created_at') required int createdAt,
  }) = _EventOut;

  /// Object construction from a JSON representation
  factory EventOut.fromJson(Map<String, dynamic> json) =>
      _$EventOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['name', 'data', 'created_at'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'data': data,
      'created_at': createdAt,
    };
  }
}

// ==========================================
// CLASS: MetricOut
// ==========================================

/// Metrics at the step number during the fine-tuning job. Use these metrics to assess if the training is going smoothly (loss should decrease, token accuracy should increase).
@freezed
class MetricOut with _$MetricOut {
  const MetricOut._();

  /// Factory constructor for MetricOut
  const factory MetricOut({
    /// No Description
    @JsonKey(name: 'train_loss', includeIfNull: false) double? trainLoss,

    /// No Description
    @JsonKey(name: 'valid_loss', includeIfNull: false) double? validLoss,

    /// No Description
    @JsonKey(name: 'valid_mean_token_accuracy', includeIfNull: false)
    double? validMeanTokenAccuracy,
  }) = _MetricOut;

  /// Object construction from a JSON representation
  factory MetricOut.fromJson(Map<String, dynamic> json) =>
      _$MetricOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'train_loss',
    'valid_loss',
    'valid_mean_token_accuracy'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'train_loss': trainLoss,
      'valid_loss': validLoss,
      'valid_mean_token_accuracy': validMeanTokenAccuracy,
    };
  }
}

// ==========================================
// CLASS: FTModelCapabilitiesOut
// ==========================================

/// No Description
@freezed
class FTModelCapabilitiesOut with _$FTModelCapabilitiesOut {
  const FTModelCapabilitiesOut._();

  /// Factory constructor for FTModelCapabilitiesOut
  const factory FTModelCapabilitiesOut({
    /// No Description
    @JsonKey(name: 'completion_chat') @Default(true) bool completionChat,

    /// No Description
    @JsonKey(name: 'completion_fim') @Default(false) bool completionFim,

    /// No Description
    @JsonKey(name: 'function_calling') @Default(false) bool functionCalling,

    /// No Description
    @JsonKey(name: 'fine_tuning') @Default(false) bool fineTuning,
  }) = _FTModelCapabilitiesOut;

  /// Object construction from a JSON representation
  factory FTModelCapabilitiesOut.fromJson(Map<String, dynamic> json) =>
      _$FTModelCapabilitiesOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'completion_chat',
    'completion_fim',
    'function_calling',
    'fine_tuning'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'completion_chat': completionChat,
      'completion_fim': completionFim,
      'function_calling': functionCalling,
      'fine_tuning': fineTuning,
    };
  }
}

// ==========================================
// CLASS: FTModelOut
// ==========================================

/// No Description
@freezed
class FTModelOut with _$FTModelOut {
  const FTModelOut._();

  /// Factory constructor for FTModelOut
  const factory FTModelOut({
    /// No Description
    required String id,

    ///
    @Default(FTModelOutObject.model) FTModelOutObject object,

    /// No Description
    required int created,

    /// No Description
    @JsonKey(name: 'owned_by') required String ownedBy,

    /// No Description
    required String root,

    /// No Description
    required bool archived,

    /// No Description
    @JsonKey(includeIfNull: false) String? name,

    /// No Description
    @JsonKey(includeIfNull: false) String? description,

    /// No Description
    required FTModelCapabilitiesOut capabilities,

    /// No Description
    @JsonKey(name: 'max_context_length') @Default(32768) int maxContextLength,

    /// No Description
    @Default([]) List<String> aliases,

    /// No Description
    required String job,
  }) = _FTModelOut;

  /// Object construction from a JSON representation
  factory FTModelOut.fromJson(Map<String, dynamic> json) =>
      _$FTModelOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'object',
    'created',
    'owned_by',
    'root',
    'archived',
    'name',
    'description',
    'capabilities',
    'max_context_length',
    'aliases',
    'job'
  ];

  /// Validation constants
  static const maxContextLengthDefaultValue = 32768;

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'created': created,
      'owned_by': ownedBy,
      'root': root,
      'archived': archived,
      'name': name,
      'description': description,
      'capabilities': capabilities,
      'max_context_length': maxContextLength,
      'aliases': aliases,
      'job': job,
    };
  }
}

// ==========================================
// ENUM: FTModelOutObject
// ==========================================

/// No Description
enum FTModelOutObject {
  @JsonValue('model')
  model,
}

// ==========================================
// CLASS: UpdateFTModelIn
// ==========================================

/// No Description
@freezed
class UpdateFTModelIn with _$UpdateFTModelIn {
  const UpdateFTModelIn._();

  /// Factory constructor for UpdateFTModelIn
  const factory UpdateFTModelIn({
    /// No Description
    @JsonKey(includeIfNull: false) String? name,

    /// No Description
    @JsonKey(includeIfNull: false) String? description,
  }) = _UpdateFTModelIn;

  /// Object construction from a JSON representation
  factory UpdateFTModelIn.fromJson(Map<String, dynamic> json) =>
      _$UpdateFTModelInFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['name', 'description'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
    };
  }
}

// ==========================================
// CLASS: ArchiveFTModelOut
// ==========================================

/// No Description
@freezed
class ArchiveFTModelOut with _$ArchiveFTModelOut {
  const ArchiveFTModelOut._();

  /// Factory constructor for ArchiveFTModelOut
  const factory ArchiveFTModelOut({
    /// No Description
    required String id,

    ///
    @Default(ArchiveFTModelOutObject.model) ArchiveFTModelOutObject object,

    /// No Description
    @Default(true) bool archived,
  }) = _ArchiveFTModelOut;

  /// Object construction from a JSON representation
  factory ArchiveFTModelOut.fromJson(Map<String, dynamic> json) =>
      _$ArchiveFTModelOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['id', 'object', 'archived'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'archived': archived,
    };
  }
}

// ==========================================
// ENUM: ArchiveFTModelOutObject
// ==========================================

/// No Description
enum ArchiveFTModelOutObject {
  @JsonValue('model')
  model,
}

// ==========================================
// CLASS: UnarchiveFTModelOut
// ==========================================

/// No Description
@freezed
class UnarchiveFTModelOut with _$UnarchiveFTModelOut {
  const UnarchiveFTModelOut._();

  /// Factory constructor for UnarchiveFTModelOut
  const factory UnarchiveFTModelOut({
    /// No Description
    required String id,

    ///
    @Default(UnarchiveFTModelOutObject.model) UnarchiveFTModelOutObject object,

    /// No Description
    @Default(false) bool archived,
  }) = _UnarchiveFTModelOut;

  /// Object construction from a JSON representation
  factory UnarchiveFTModelOut.fromJson(Map<String, dynamic> json) =>
      _$UnarchiveFTModelOutFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['id', 'object', 'archived'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'archived': archived,
    };
  }
}

// ==========================================
// ENUM: UnarchiveFTModelOutObject
// ==========================================

/// No Description
enum UnarchiveFTModelOutObject {
  @JsonValue('model')
  model,
}

// ==========================================
// CLASS: AssistantMessage
// ==========================================

/// No Description
@freezed
class AssistantMessage with _$AssistantMessage {
  const AssistantMessage._();

  /// Factory constructor for AssistantMessage
  const factory AssistantMessage({
    /// No Description
    @JsonKey(includeIfNull: false) String? content,

    /// No Description
    @JsonKey(name: 'tool_calls', includeIfNull: false)
    List<ToolCall>? toolCalls,

    /// Set this to `true` when adding an assistant message as prefix to condition the model response. The role of the prefix message is to force the model to start its answer by the content of the message.
    @Default(false) bool prefix,

    ///
    @Default(Role.assistant) Role role,
  }) = _AssistantMessage;

  /// Object construction from a JSON representation
  factory AssistantMessage.fromJson(Map<String, dynamic> json) =>
      _$AssistantMessageFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'content',
    'tool_calls',
    'prefix',
    'role'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'tool_calls': toolCalls,
      'prefix': prefix,
      'role': role,
    };
  }
}

// ==========================================
// ENUM: Role
// ==========================================

/// No Description
enum Role {
  @JsonValue('assistant')
  assistant,
}

// ==========================================
// CLASS: ChatCompletionRequest
// ==========================================

/// No Description
@freezed
class ChatCompletionRequest with _$ChatCompletionRequest {
  const ChatCompletionRequest._();

  /// Factory constructor for ChatCompletionRequest
  const factory ChatCompletionRequest({
    /// ID of the model to use. You can use the [List Available Models](/api/#tag/models/operation/list_models_v1_models_get) API to see all of your available models, or see our [Model overview](/models) for model descriptions.
    required String? model,

    /// What sampling temperature to use, between 0.0 and 1.0. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or `top_p` but not both.
    @Default(0.7) double temperature,

    /// Nucleus sampling, where the model considers the results of the tokens with `top_p` probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered. We generally recommend altering this or `temperature` but not both.
    @JsonKey(name: 'top_p') @Default(1.0) double topP,

    /// The maximum number of tokens to generate in the completion. The token count of your prompt plus `max_tokens` cannot exceed the model's context length.
    @JsonKey(name: 'max_tokens', includeIfNull: false) int? maxTokens,

    /// The minimum number of tokens to generate in the completion.
    @JsonKey(name: 'min_tokens', includeIfNull: false) int? minTokens,

    /// Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
    @Default(false) bool stream,

    /// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
    @_StopConverter() @JsonKey(includeIfNull: false) Stop? stop,

    /// The seed to use for random sampling. If set, different calls will generate deterministic results.
    @JsonKey(name: 'random_seed', includeIfNull: false) int? randomSeed,

    /// The prompt(s) to generate completions for, encoded as a list of dict
    /// with role and content.
    ///
    /// You can pass only this types into to the list: [SystemMessage], [UserMessage],
    /// [AssistantMessage], [ToolMessage].
    required List<dynamic> messages,

    /// No Description
    @JsonKey(name: 'response_format', includeIfNull: false)
    ResponseFormat? responseFormat,

    /// No Description
    @JsonKey(includeIfNull: false) List<Tool>? tools,

    ///
    @JsonKey(name: 'tool_choice')
    @Default(ToolChoice.auto)
    ToolChoice toolChoice,

    /// Whether to inject a safety prompt before all conversations.
    @JsonKey(name: 'safe_prompt') @Default(false) bool safePrompt,
  }) = _ChatCompletionRequest;

  /// Object construction from a JSON representation
  factory ChatCompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionRequestFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'model',
    'temperature',
    'top_p',
    'max_tokens',
    'min_tokens',
    'stream',
    'stop',
    'random_seed',
    'messages',
    'response_format',
    'tools',
    'tool_choice',
    'safe_prompt'
  ];

  /// Validation constants
  static const temperatureDefaultValue = 0.7;
  static const temperatureMinValue = 0.0;
  static const temperatureMaxValue = 1.5;
  static const topPDefaultValue = 1.0;
  static const topPMinValue = 0.0;
  static const topPMaxValue = 1.0;
  static const maxTokensMinValue = 0;
  static const minTokensMinValue = 0;
  static const randomSeedMinValue = 0;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (temperature < temperatureMinValue) {
      return "The value of 'temperature' cannot be < $temperatureMinValue";
    }
    if (temperature > temperatureMaxValue) {
      return "The value of 'temperature' cannot be > $temperatureMaxValue";
    }
    if (topP < topPMinValue) {
      return "The value of 'topP' cannot be < $topPMinValue";
    }
    if (topP > topPMaxValue) {
      return "The value of 'topP' cannot be > $topPMaxValue";
    }
    if (maxTokens != null && maxTokens! < maxTokensMinValue) {
      return "The value of 'maxTokens' cannot be < $maxTokensMinValue";
    }
    if (minTokens != null && minTokens! < minTokensMinValue) {
      return "The value of 'minTokens' cannot be < $minTokensMinValue";
    }
    if (randomSeed != null && randomSeed! < randomSeedMinValue) {
      return "The value of 'randomSeed' cannot be < $randomSeedMinValue";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'model': model,
      'temperature': temperature,
      'top_p': topP,
      'max_tokens': maxTokens,
      'min_tokens': minTokens,
      'stream': stream,
      'stop': stop,
      'random_seed': randomSeed,
      'messages': messages,
      'response_format': responseFormat,
      'tools': tools,
      'tool_choice': toolChoice,
      'safe_prompt': safePrompt,
    };
  }
}

// ==========================================
// CLASS: Stop
// ==========================================

/// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
@freezed
sealed class Stop with _$Stop {
  const Stop._();

  const factory Stop.arrayString(
    List<String> value,
  ) = _UnionStopArrayString;

  const factory Stop.string(
    String value,
  ) = _UnionStopString;

  /// Object construction from a JSON representation
  factory Stop.fromJson(Map<String, dynamic> json) => _$StopFromJson(json);
}

/// Custom JSON converter for [Stop]
class _StopConverter implements JsonConverter<Stop?, Object?> {
  const _StopConverter();

  @override
  Stop? fromJson(Object? data) {
    if (data == null) {
      return null;
    }
    if (data is List && data.every((item) => item is String)) {
      return Stop.arrayString(data.cast());
    }
    if (data is String) {
      return Stop.string(data);
    }
    throw Exception(
      'Unexpected value for Stop: $data',
    );
  }

  @override
  Object? toJson(Stop? data) {
    return switch (data) {
      _UnionStopArrayString(value: final v) => v,
      _UnionStopString(value: final v) => v,
      null => null,
    };
  }
}

// ==========================================
// ENUM: ChunkTypes
// ==========================================

/// No Description
enum ChunkTypes {
  @JsonValue('text')
  text,
}

// ==========================================
// CLASS: ContentChunk
// ==========================================

/// No Description
@freezed
class ContentChunk with _$ContentChunk {
  const ContentChunk._();

  /// Factory constructor for ContentChunk
  const factory ContentChunk({
    ///
    @Default(ChunkTypes.text) ChunkTypes type,

    /// No Description
    required String text,
  }) = _ContentChunk;

  /// Object construction from a JSON representation
  factory ContentChunk.fromJson(Map<String, dynamic> json) =>
      _$ContentChunkFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['type', 'text'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'text': text,
    };
  }
}

// ==========================================
// CLASS: FIMCompletionRequest
// ==========================================

/// No Description
@freezed
class FIMCompletionRequest with _$FIMCompletionRequest {
  const FIMCompletionRequest._();

  /// Factory constructor for FIMCompletionRequest
  const factory FIMCompletionRequest({
    /// ID of the model to use. Only compatible for now with:
    ///   - `codestral-2405`
    ///   - `codestral-latest`
    required String? model,

    /// What sampling temperature to use, between 0.0 and 1.0. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or `top_p` but not both.
    @Default(0.7) double temperature,

    /// Nucleus sampling, where the model considers the results of the tokens with `top_p` probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered. We generally recommend altering this or `temperature` but not both.
    @JsonKey(name: 'top_p') @Default(1.0) double topP,

    /// The maximum number of tokens to generate in the completion. The token count of your prompt plus `max_tokens` cannot exceed the model's context length.
    @JsonKey(name: 'max_tokens', includeIfNull: false) int? maxTokens,

    /// The minimum number of tokens to generate in the completion.
    @JsonKey(name: 'min_tokens', includeIfNull: false) int? minTokens,

    /// Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
    @Default(false) bool stream,

    /// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
    @_FIMCompletionRequestStopConverter()
    @JsonKey(includeIfNull: false)
    FIMCompletionRequestStop? stop,

    /// The seed to use for random sampling. If set, different calls will generate deterministic results.
    @JsonKey(name: 'random_seed', includeIfNull: false) int? randomSeed,

    /// The text/code to complete.
    required String prompt,

    /// Optional text/code that adds more context for the model. When given a `prompt` and a `suffix` the model will fill what is between them. When `suffix` is not provided, the model will simply execute completion starting with `prompt`.
    @JsonKey(includeIfNull: false) @Default('') String? suffix,
  }) = _FIMCompletionRequest;

  /// Object construction from a JSON representation
  factory FIMCompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$FIMCompletionRequestFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'model',
    'temperature',
    'top_p',
    'max_tokens',
    'min_tokens',
    'stream',
    'stop',
    'random_seed',
    'prompt',
    'suffix'
  ];

  /// Validation constants
  static const temperatureDefaultValue = 0.7;
  static const temperatureMinValue = 0.0;
  static const temperatureMaxValue = 1.5;
  static const topPDefaultValue = 1.0;
  static const topPMinValue = 0.0;
  static const topPMaxValue = 1.0;
  static const maxTokensMinValue = 0;
  static const minTokensMinValue = 0;
  static const randomSeedMinValue = 0;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (temperature < temperatureMinValue) {
      return "The value of 'temperature' cannot be < $temperatureMinValue";
    }
    if (temperature > temperatureMaxValue) {
      return "The value of 'temperature' cannot be > $temperatureMaxValue";
    }
    if (topP < topPMinValue) {
      return "The value of 'topP' cannot be < $topPMinValue";
    }
    if (topP > topPMaxValue) {
      return "The value of 'topP' cannot be > $topPMaxValue";
    }
    if (maxTokens != null && maxTokens! < maxTokensMinValue) {
      return "The value of 'maxTokens' cannot be < $maxTokensMinValue";
    }
    if (minTokens != null && minTokens! < minTokensMinValue) {
      return "The value of 'minTokens' cannot be < $minTokensMinValue";
    }
    if (randomSeed != null && randomSeed! < randomSeedMinValue) {
      return "The value of 'randomSeed' cannot be < $randomSeedMinValue";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'model': model,
      'temperature': temperature,
      'top_p': topP,
      'max_tokens': maxTokens,
      'min_tokens': minTokens,
      'stream': stream,
      'stop': stop,
      'random_seed': randomSeed,
      'prompt': prompt,
      'suffix': suffix,
    };
  }
}

// ==========================================
// CLASS: FIMCompletionRequestStop
// ==========================================

/// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
@freezed
sealed class FIMCompletionRequestStop with _$FIMCompletionRequestStop {
  const FIMCompletionRequestStop._();

  const factory FIMCompletionRequestStop.arrayString(
    List<String> value,
  ) = _UnionFIMCompletionRequestStopArrayString;

  const factory FIMCompletionRequestStop.string(
    String value,
  ) = _UnionFIMCompletionRequestStopString;

  /// Object construction from a JSON representation
  factory FIMCompletionRequestStop.fromJson(Map<String, dynamic> json) =>
      _$FIMCompletionRequestStopFromJson(json);
}

/// Custom JSON converter for [FIMCompletionRequestStop]
class _FIMCompletionRequestStopConverter
    implements JsonConverter<FIMCompletionRequestStop?, Object?> {
  const _FIMCompletionRequestStopConverter();

  @override
  FIMCompletionRequestStop? fromJson(Object? data) {
    if (data == null) {
      return null;
    }
    if (data is List && data.every((item) => item is String)) {
      return FIMCompletionRequestStop.arrayString(data.cast());
    }
    if (data is String) {
      return FIMCompletionRequestStop.string(data);
    }
    throw Exception(
      'Unexpected value for FIMCompletionRequestStop: $data',
    );
  }

  @override
  Object? toJson(FIMCompletionRequestStop? data) {
    return switch (data) {
      _UnionFIMCompletionRequestStopArrayString(value: final v) => v,
      _UnionFIMCompletionRequestStopString(value: final v) => v,
      null => null,
    };
  }
}

// ==========================================
// CLASS: FunctionDefinition
// ==========================================

/// No Description
@freezed
class FunctionDefinition with _$FunctionDefinition {
  const FunctionDefinition._();

  /// Factory constructor for FunctionDefinition
  const factory FunctionDefinition({
    /// No Description
    required String name,

    /// No Description
    @Default('') String description,

    /// No Description
    required Map<String, dynamic> parameters,
  }) = _FunctionDefinition;

  /// Object construction from a JSON representation
  factory FunctionDefinition.fromJson(Map<String, dynamic> json) =>
      _$FunctionDefinitionFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'name',
    'description',
    'parameters'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'parameters': parameters,
    };
  }
}

// ==========================================
// CLASS: FunctionCall
// ==========================================

/// No Description
@freezed
class FunctionCall with _$FunctionCall {
  const FunctionCall._();

  /// Factory constructor for FunctionCall
  const factory FunctionCall({
    /// No Description
    required String name,

    /// No Description
    @_ArgumentsConverter() required Arguments arguments,
  }) = _FunctionCall;

  /// Object construction from a JSON representation
  factory FunctionCall.fromJson(Map<String, dynamic> json) =>
      _$FunctionCallFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['name', 'arguments'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'arguments': arguments,
    };
  }
}

// ==========================================
// CLASS: Arguments
// ==========================================

/// No Description
@freezed
sealed class Arguments with _$Arguments {
  const Arguments._();

  const factory Arguments.string(
    String value,
  ) = _UnionArgumentsString;

  const factory Arguments.map(
    Map<String, dynamic> value,
  ) = _UnionArgumentsMap;

  /// Object construction from a JSON representation
  factory Arguments.fromJson(Map<String, dynamic> json) =>
      _$ArgumentsFromJson(json);
}

/// Custom JSON converter for [Arguments]
class _ArgumentsConverter implements JsonConverter<Arguments, Object?> {
  const _ArgumentsConverter();

  @override
  Arguments fromJson(Object? data) {
    if (data is String) {
      return Arguments.string(data);
    }
    if (data is Map<String, dynamic>) {
      return Arguments.map(data);
    }
    throw Exception(
      'Unexpected value for Arguments: $data',
    );
  }

  @override
  Object? toJson(Arguments data) {
    return switch (data) {
      _UnionArgumentsString(value: final v) => v,
      _UnionArgumentsMap(value: final v) => v,
    };
  }
}

// ==========================================
// CLASS: ResponseFormat
// ==========================================

/// No Description
@freezed
class ResponseFormat with _$ResponseFormat {
  const ResponseFormat._();

  /// Factory constructor for ResponseFormat
  const factory ResponseFormat({
    /// An object specifying the format that the model must output. Setting to `{ "type": "json_object" }` enables JSON mode, which guarantees the message the model generates is in JSON. When using JSON mode you MUST also instruct the model to produce JSON yourself with a system or a user message.
    @Default(ResponseFormats.text) ResponseFormats type,
  }) = _ResponseFormat;

  /// Object construction from a JSON representation
  factory ResponseFormat.fromJson(Map<String, dynamic> json) =>
      _$ResponseFormatFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['type'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'type': type,
    };
  }
}

// ==========================================
// ENUM: ResponseFormats
// ==========================================

/// An object specifying the format that the model must output. Setting to `{ "type": "json_object" }` enables JSON mode, which guarantees the message the model generates is in JSON. When using JSON mode you MUST also instruct the model to produce JSON yourself with a system or a user message.
enum ResponseFormats {
  @JsonValue('text')
  text,
  @JsonValue('json_object')
  jsonObject,
}

// ==========================================
// CLASS: SystemMessage
// ==========================================

/// No Description
@freezed
class SystemMessage with _$SystemMessage {
  const SystemMessage._();

  /// Factory constructor for SystemMessage
  const factory SystemMessage({
    /// No Description
    @_ContentConverter() required Content content,

    ///
    @Default(SystemMessageRole.system) SystemMessageRole role,
  }) = _SystemMessage;

  /// Object construction from a JSON representation
  factory SystemMessage.fromJson(Map<String, dynamic> json) =>
      _$SystemMessageFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['content', 'role'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'role': role,
    };
  }
}

// ==========================================
// CLASS: Content
// ==========================================

/// No Description
@freezed
sealed class Content with _$Content {
  const Content._();

  const factory Content.array(
    List<ContentChunk> value,
  ) = _UnionContentArray;

  const factory Content.string(
    String value,
  ) = _UnionContentString;

  /// Object construction from a JSON representation
  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}

/// Custom JSON converter for [Content]
class _ContentConverter implements JsonConverter<Content, Object?> {
  const _ContentConverter();

  @override
  Content fromJson(Object? data) {
    if (data is List && data.every((item) => item is ContentChunk)) {
      return Content.array(data.cast());
    }
    if (data is String) {
      return Content.string(data);
    }
    throw Exception(
      'Unexpected value for Content: $data',
    );
  }

  @override
  Object? toJson(Content data) {
    return switch (data) {
      _UnionContentArray(value: final v) => v,
      _UnionContentString(value: final v) => v,
    };
  }
}

// ==========================================
// ENUM: SystemMessageRole
// ==========================================

/// No Description
enum SystemMessageRole {
  @JsonValue('system')
  system,
}

// ==========================================
// CLASS: TextChunk
// ==========================================

/// No Description
@freezed
class TextChunk with _$TextChunk {
  const TextChunk._();

  /// Factory constructor for TextChunk
  const factory TextChunk({
    ///
    @Default(TextChunkType.text) TextChunkType type,

    /// No Description
    required String text,
  }) = _TextChunk;

  /// Object construction from a JSON representation
  factory TextChunk.fromJson(Map<String, dynamic> json) =>
      _$TextChunkFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['type', 'text'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'text': text,
    };
  }
}

// ==========================================
// ENUM: TextChunkType
// ==========================================

/// No Description
enum TextChunkType {
  @JsonValue('text')
  text,
}

// ==========================================
// CLASS: Tool
// ==========================================

/// No Description
@freezed
class Tool with _$Tool {
  const Tool._();

  /// Factory constructor for Tool
  const factory Tool({
    ///
    @Default(ToolTypes.function) ToolTypes type,

    /// No Description
    required FunctionDefinition function,
  }) = _Tool;

  /// Object construction from a JSON representation
  factory Tool.fromJson(Map<String, dynamic> json) => _$ToolFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['type', 'function'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'function': function,
    };
  }
}

// ==========================================
// CLASS: ToolCall
// ==========================================

/// No Description
@freezed
class ToolCall with _$ToolCall {
  const ToolCall._();

  /// Factory constructor for ToolCall
  const factory ToolCall({
    /// No Description
    @JsonKey(includeIfNull: false) String? id,

    ///
    @Default(ToolTypes.function) ToolTypes type,

    /// No Description
    required FunctionCall function,
  }) = _ToolCall;

  /// Object construction from a JSON representation
  factory ToolCall.fromJson(Map<String, dynamic> json) =>
      _$ToolCallFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['id', 'type', 'function'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'function': function,
    };
  }
}

// ==========================================
// ENUM: ToolChoice
// ==========================================

/// No Description
enum ToolChoice {
  @JsonValue('auto')
  auto,
  @JsonValue('none')
  none,
  @JsonValue('any')
  any,
}

// ==========================================
// CLASS: ToolMessage
// ==========================================

/// No Description
@freezed
class ToolMessage with _$ToolMessage {
  const ToolMessage._();

  /// Factory constructor for ToolMessage
  const factory ToolMessage({
    /// No Description
    required String content,

    /// No Description
    @JsonKey(name: 'tool_call_id', includeIfNull: false) String? toolCallId,

    /// No Description
    @JsonKey(includeIfNull: false) String? name,

    ///
    @Default(ToolMessageRole.tool) ToolMessageRole role,
  }) = _ToolMessage;

  /// Object construction from a JSON representation
  factory ToolMessage.fromJson(Map<String, dynamic> json) =>
      _$ToolMessageFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'content',
    'tool_call_id',
    'name',
    'role'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'tool_call_id': toolCallId,
      'name': name,
      'role': role,
    };
  }
}

// ==========================================
// ENUM: ToolMessageRole
// ==========================================

/// No Description
enum ToolMessageRole {
  @JsonValue('tool')
  tool,
}

// ==========================================
// ENUM: ToolTypes
// ==========================================

/// No Description
enum ToolTypes {
  @JsonValue('function')
  function,
}

// ==========================================
// CLASS: UserMessage
// ==========================================

/// No Description
@freezed
class UserMessage with _$UserMessage {
  const UserMessage._();

  /// Factory constructor for UserMessage
  const factory UserMessage({
    /// No Description
    @_UserMessageContentConverter() required UserMessageContent content,

    ///
    @Default(UserMessageRole.user) UserMessageRole role,
  }) = _UserMessage;

  /// Object construction from a JSON representation
  factory UserMessage.fromJson(Map<String, dynamic> json) =>
      _$UserMessageFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['content', 'role'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'role': role,
    };
  }
}

// ==========================================
// CLASS: UserMessageContent
// ==========================================

/// No Description
@freezed
sealed class UserMessageContent with _$UserMessageContent {
  const UserMessageContent._();

  const factory UserMessageContent.array(
    List<TextChunk> value,
  ) = _UnionUserMessageContentArray;

  const factory UserMessageContent.string(
    String value,
  ) = _UnionUserMessageContentString;

  /// Object construction from a JSON representation
  factory UserMessageContent.fromJson(Map<String, dynamic> json) =>
      _$UserMessageContentFromJson(json);
}

/// Custom JSON converter for [UserMessageContent]
class _UserMessageContentConverter
    implements JsonConverter<UserMessageContent, Object?> {
  const _UserMessageContentConverter();

  @override
  UserMessageContent fromJson(Object? data) {
    if (data is List && data.every((item) => item is TextChunk)) {
      return UserMessageContent.array(data.cast());
    }
    if (data is String) {
      return UserMessageContent.string(data);
    }
    throw Exception(
      'Unexpected value for UserMessageContent: $data',
    );
  }

  @override
  Object? toJson(UserMessageContent data) {
    return switch (data) {
      _UnionUserMessageContentArray(value: final v) => v,
      _UnionUserMessageContentString(value: final v) => v,
    };
  }
}

// ==========================================
// ENUM: UserMessageRole
// ==========================================

/// No Description
enum UserMessageRole {
  @JsonValue('user')
  user,
}

// ==========================================
// CLASS: AgentsCompletionRequest
// ==========================================

/// No Description
@freezed
class AgentsCompletionRequest with _$AgentsCompletionRequest {
  const AgentsCompletionRequest._();

  /// Factory constructor for AgentsCompletionRequest
  const factory AgentsCompletionRequest({
    /// The maximum number of tokens to generate in the completion. The token count of your prompt plus `max_tokens` cannot exceed the model's context length.
    @JsonKey(name: 'max_tokens', includeIfNull: false) int? maxTokens,

    /// The minimum number of tokens to generate in the completion.
    @JsonKey(name: 'min_tokens', includeIfNull: false) int? minTokens,

    /// Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
    @Default(false) bool stream,

    /// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
    @_AgentsCompletionRequestStopConverter()
    @JsonKey(includeIfNull: false)
    AgentsCompletionRequestStop? stop,

    /// The seed to use for random sampling. If set, different calls will generate deterministic results.
    @JsonKey(name: 'random_seed', includeIfNull: false) int? randomSeed,

    /// The prompt(s) to generate completions for, encoded as a list of dict
    /// with role and content.
    ///
    /// You can pass only this types into to the list [UserMessage],
    /// [AssistantMessage], [ToolMessage].
    required List<dynamic> messages,

    /// No Description
    @JsonKey(name: 'response_format', includeIfNull: false)
    ResponseFormat? responseFormat,

    /// No Description
    @JsonKey(includeIfNull: false) List<Tool>? tools,

    ///
    @JsonKey(name: 'tool_choice')
    @Default(ToolChoice.auto)
    ToolChoice toolChoice,

    /// The ID of the agent to use for this completion.
    @JsonKey(name: 'agent_id') required String agentId,
  }) = _AgentsCompletionRequest;

  /// Object construction from a JSON representation
  factory AgentsCompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$AgentsCompletionRequestFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'max_tokens',
    'min_tokens',
    'stream',
    'stop',
    'random_seed',
    'messages',
    'response_format',
    'tools',
    'tool_choice',
    'agent_id'
  ];

  /// Validation constants
  static const maxTokensMinValue = 0;
  static const minTokensMinValue = 0;
  static const randomSeedMinValue = 0;

  /// Perform validations on the schema property values
  String? validateSchema() {
    if (maxTokens != null && maxTokens! < maxTokensMinValue) {
      return "The value of 'maxTokens' cannot be < $maxTokensMinValue";
    }
    if (minTokens != null && minTokens! < minTokensMinValue) {
      return "The value of 'minTokens' cannot be < $minTokensMinValue";
    }
    if (randomSeed != null && randomSeed! < randomSeedMinValue) {
      return "The value of 'randomSeed' cannot be < $randomSeedMinValue";
    }
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'max_tokens': maxTokens,
      'min_tokens': minTokens,
      'stream': stream,
      'stop': stop,
      'random_seed': randomSeed,
      'messages': messages,
      'response_format': responseFormat,
      'tools': tools,
      'tool_choice': toolChoice,
      'agent_id': agentId,
    };
  }
}

// ==========================================
// CLASS: AgentsCompletionRequestStop
// ==========================================

/// Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
@freezed
sealed class AgentsCompletionRequestStop with _$AgentsCompletionRequestStop {
  const AgentsCompletionRequestStop._();

  const factory AgentsCompletionRequestStop.arrayString(
    List<String> value,
  ) = _UnionAgentsCompletionRequestStopArrayString;

  const factory AgentsCompletionRequestStop.string(
    String value,
  ) = _UnionAgentsCompletionRequestStopString;

  /// Object construction from a JSON representation
  factory AgentsCompletionRequestStop.fromJson(Map<String, dynamic> json) =>
      _$AgentsCompletionRequestStopFromJson(json);
}

/// Custom JSON converter for [AgentsCompletionRequestStop]
class _AgentsCompletionRequestStopConverter
    implements JsonConverter<AgentsCompletionRequestStop?, Object?> {
  const _AgentsCompletionRequestStopConverter();

  @override
  AgentsCompletionRequestStop? fromJson(Object? data) {
    if (data == null) {
      return null;
    }
    if (data is List && data.every((item) => item is String)) {
      return AgentsCompletionRequestStop.arrayString(data.cast());
    }
    if (data is String) {
      return AgentsCompletionRequestStop.string(data);
    }
    throw Exception(
      'Unexpected value for AgentsCompletionRequestStop: $data',
    );
  }

  @override
  Object? toJson(AgentsCompletionRequestStop? data) {
    return switch (data) {
      _UnionAgentsCompletionRequestStopArrayString(value: final v) => v,
      _UnionAgentsCompletionRequestStopString(value: final v) => v,
      null => null,
    };
  }
}

// ==========================================
// CLASS: EmbeddingRequest
// ==========================================

/// No Description
@freezed
class EmbeddingRequest with _$EmbeddingRequest {
  const EmbeddingRequest._();

  /// Factory constructor for EmbeddingRequest
  const factory EmbeddingRequest({
    /// Text to embed.
    @_EmbeddingRequestInputConverter() required EmbeddingRequestInput input,

    /// ID of the model to use.
    required String model,

    /// The format to return the embeddings in.
    @JsonKey(name: 'encoding_format', includeIfNull: false)
    @Default('float')
    String? encodingFormat,
  }) = _EmbeddingRequest;

  /// Object construction from a JSON representation
  factory EmbeddingRequest.fromJson(Map<String, dynamic> json) =>
      _$EmbeddingRequestFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'input',
    'model',
    'encoding_format'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'input': input,
      'model': model,
      'encoding_format': encodingFormat,
    };
  }
}

// ==========================================
// CLASS: EmbeddingRequestInput
// ==========================================

/// Text to embed.
@freezed
sealed class EmbeddingRequestInput with _$EmbeddingRequestInput {
  const EmbeddingRequestInput._();

  const factory EmbeddingRequestInput.arrayString(
    List<String> value,
  ) = _UnionEmbeddingRequestInputArrayString;

  const factory EmbeddingRequestInput.string(
    String value,
  ) = _UnionEmbeddingRequestInputString;

  /// Object construction from a JSON representation
  factory EmbeddingRequestInput.fromJson(Map<String, dynamic> json) =>
      _$EmbeddingRequestInputFromJson(json);
}

/// Custom JSON converter for [EmbeddingRequestInput]
class _EmbeddingRequestInputConverter
    implements JsonConverter<EmbeddingRequestInput, Object?> {
  const _EmbeddingRequestInputConverter();

  @override
  EmbeddingRequestInput fromJson(Object? data) {
    if (data is List && data.every((item) => item is String)) {
      return EmbeddingRequestInput.arrayString(data.cast());
    }
    if (data is String) {
      return EmbeddingRequestInput.string(data);
    }
    throw Exception(
      'Unexpected value for EmbeddingRequestInput: $data',
    );
  }

  @override
  Object? toJson(EmbeddingRequestInput data) {
    return switch (data) {
      _UnionEmbeddingRequestInputArrayString(value: final v) => v,
      _UnionEmbeddingRequestInputString(value: final v) => v,
    };
  }
}

// ==========================================
// CLASS: UsageInfo
// ==========================================

/// No Description
@freezed
class UsageInfo with _$UsageInfo {
  const UsageInfo._();

  /// Factory constructor for UsageInfo
  const factory UsageInfo({
    /// No Description
    @JsonKey(name: 'prompt_tokens') required int promptTokens,

    /// No Description
    @JsonKey(name: 'completion_tokens') required int completionTokens,

    /// No Description
    @JsonKey(name: 'total_tokens') required int totalTokens,
  }) = _UsageInfo;

  /// Object construction from a JSON representation
  factory UsageInfo.fromJson(Map<String, dynamic> json) =>
      _$UsageInfoFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'prompt_tokens',
    'completion_tokens',
    'total_tokens'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'prompt_tokens': promptTokens,
      'completion_tokens': completionTokens,
      'total_tokens': totalTokens,
    };
  }
}

// ==========================================
// CLASS: ResponseBase
// ==========================================

/// No Description
@freezed
class ResponseBase with _$ResponseBase {
  const ResponseBase._();

  /// Factory constructor for ResponseBase
  const factory ResponseBase({
    /// No Description
    @JsonKey(includeIfNull: false) String? id,

    /// No Description
    @JsonKey(includeIfNull: false) String? object,

    /// No Description
    @JsonKey(includeIfNull: false) String? model,

    /// No Description
    @JsonKey(includeIfNull: false) UsageInfo? usage,
  }) = _ResponseBase;

  /// Object construction from a JSON representation
  factory ResponseBase.fromJson(Map<String, dynamic> json) =>
      _$ResponseBaseFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['id', 'object', 'model', 'usage'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'model': model,
      'usage': usage,
    };
  }
}

// ==========================================
// CLASS: ChatCompletionChoice
// ==========================================

/// No Description
@freezed
class ChatCompletionChoice with _$ChatCompletionChoice {
  const ChatCompletionChoice._();

  /// Factory constructor for ChatCompletionChoice
  const factory ChatCompletionChoice({
    /// No Description
    required int index,

    /// No Description
    required AssistantMessage message,

    ///
    @JsonKey(name: 'finish_reason')
    required ChatCompletionChoiceFinishReason finishReason,
  }) = _ChatCompletionChoice;

  /// Object construction from a JSON representation
  factory ChatCompletionChoice.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionChoiceFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'index',
    'message',
    'finish_reason'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'index': index,
      'message': message,
      'finish_reason': finishReason,
    };
  }
}

// ==========================================
// ENUM: ChatCompletionChoiceFinishReason
// ==========================================

/// No Description
enum ChatCompletionChoiceFinishReason {
  @JsonValue('stop')
  stop,
  @JsonValue('length')
  length,
  @JsonValue('model_length')
  modelLength,
  @JsonValue('error')
  error,
  @JsonValue('tool_calls')
  toolCalls,
}

// ==========================================
// CLASS: ChatCompletionResponseBase
// ==========================================

/// No Description
@freezed
class ChatCompletionResponseBase with _$ChatCompletionResponseBase {
  const ChatCompletionResponseBase._();

  /// Factory constructor for ChatCompletionResponseBase
  const factory ChatCompletionResponseBase({
    /// No Description
    @JsonKey(includeIfNull: false) String? id,

    /// No Description
    @JsonKey(includeIfNull: false) String? object,

    /// No Description
    @JsonKey(includeIfNull: false) String? model,

    /// No Description
    @JsonKey(includeIfNull: false) UsageInfo? usage,

    /// No Description
    @JsonKey(includeIfNull: false) int? created,
  }) = _ChatCompletionResponseBase;

  /// Object construction from a JSON representation
  factory ChatCompletionResponseBase.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseBaseFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'object',
    'model',
    'usage',
    'created'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'model': model,
      'usage': usage,
      'created': created,
    };
  }
}

// ==========================================
// CLASS: ChatCompletionResponse
// ==========================================

/// No Description
@freezed
class ChatCompletionResponse with _$ChatCompletionResponse {
  const ChatCompletionResponse._();

  /// Factory constructor for ChatCompletionResponse
  const factory ChatCompletionResponse({
    /// No Description
    required String id,

    /// No Description
    required String object,

    /// No Description
    required String model,

    /// No Description
    required UsageInfo usage,

    /// No Description
    @JsonKey(includeIfNull: false) int? created,

    /// No Description
    @JsonKey(includeIfNull: false) List<ChatCompletionChoice>? choices,
  }) = _ChatCompletionResponse;

  /// Object construction from a JSON representation
  factory ChatCompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'object',
    'model',
    'usage',
    'created',
    'choices'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'model': model,
      'usage': usage,
      'created': created,
      'choices': choices,
    };
  }
}

// ==========================================
// CLASS: FIMCompletionResponse
// ==========================================

/// No Description
@freezed
class FIMCompletionResponse with _$FIMCompletionResponse {
  const FIMCompletionResponse._();

  /// Factory constructor for FIMCompletionResponse
  const factory FIMCompletionResponse({
    /// No Description
    required String id,

    /// No Description
    required String object,

    /// No Description
    required String model,

    /// No Description
    required UsageInfo usage,

    /// No Description
    @JsonKey(includeIfNull: false) int? created,

    /// No Description
    @JsonKey(includeIfNull: false) List<ChatCompletionChoice>? choices,
  }) = _FIMCompletionResponse;

  /// Object construction from a JSON representation
  factory FIMCompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$FIMCompletionResponseFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'object',
    'model',
    'usage',
    'created',
    'choices'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'model': model,
      'usage': usage,
      'created': created,
      'choices': choices,
    };
  }
}

// ==========================================
// CLASS: EmbeddingResponseData
// ==========================================

/// No Description
@freezed
class EmbeddingResponseData with _$EmbeddingResponseData {
  const EmbeddingResponseData._();

  /// Factory constructor for EmbeddingResponseData
  const factory EmbeddingResponseData({
    /// No Description
    @JsonKey(includeIfNull: false) String? object,

    /// No Description
    @JsonKey(includeIfNull: false) List<double>? embedding,

    /// No Description
    @JsonKey(includeIfNull: false) int? index,
  }) = _EmbeddingResponseData;

  /// Object construction from a JSON representation
  factory EmbeddingResponseData.fromJson(Map<String, dynamic> json) =>
      _$EmbeddingResponseDataFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['object', 'embedding', 'index'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'object': object,
      'embedding': embedding,
      'index': index,
    };
  }
}

// ==========================================
// CLASS: EmbeddingResponse
// ==========================================

/// No Description
@freezed
class EmbeddingResponse with _$EmbeddingResponse {
  const EmbeddingResponse._();

  /// Factory constructor for EmbeddingResponse
  const factory EmbeddingResponse({
    /// No Description
    required String id,

    /// No Description
    required String object,

    /// No Description
    required String model,

    /// No Description
    required UsageInfo usage,

    /// No Description
    required List<EmbeddingResponseData> data,
  }) = _EmbeddingResponse;

  /// Object construction from a JSON representation
  factory EmbeddingResponse.fromJson(Map<String, dynamic> json) =>
      _$EmbeddingResponseFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'object',
    'model',
    'usage',
    'data'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'model': model,
      'usage': usage,
      'data': data,
    };
  }
}

// ==========================================
// CLASS: CompletionEvent
// ==========================================

/// No Description
@freezed
class CompletionEvent with _$CompletionEvent {
  const CompletionEvent._();

  /// Factory constructor for CompletionEvent
  const factory CompletionEvent({
    /// No Description
    required CompletionChunk data,
  }) = _CompletionEvent;

  /// Object construction from a JSON representation
  factory CompletionEvent.fromJson(Map<String, dynamic> json) =>
      _$CompletionEventFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['data'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'data': data,
    };
  }
}

// ==========================================
// CLASS: CompletionChunk
// ==========================================

/// No Description
@freezed
class CompletionChunk with _$CompletionChunk {
  const CompletionChunk._();

  /// Factory constructor for CompletionChunk
  const factory CompletionChunk({
    /// No Description
    required String id,

    /// No Description
    @JsonKey(includeIfNull: false) String? object,

    /// No Description
    @JsonKey(includeIfNull: false) int? created,

    /// No Description
    required String model,

    /// No Description
    @JsonKey(includeIfNull: false) UsageInfo? usage,

    /// No Description
    required List<CompletionResponseStreamChoice> choices,
  }) = _CompletionChunk;

  /// Object construction from a JSON representation
  factory CompletionChunk.fromJson(Map<String, dynamic> json) =>
      _$CompletionChunkFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = [
    'id',
    'object',
    'created',
    'model',
    'usage',
    'choices'
  ];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'created': created,
      'model': model,
      'usage': usage,
      'choices': choices,
    };
  }
}

// ==========================================
// CLASS: CompletionResponseStreamChoice
// ==========================================

/// No Description
@freezed
class CompletionResponseStreamChoice with _$CompletionResponseStreamChoice {
  const CompletionResponseStreamChoice._();

  /// Factory constructor for CompletionResponseStreamChoice
  const factory CompletionResponseStreamChoice({
    /// No Description
    required int index,

    /// No Description
    required DeltaMessage delta,

    ///
    @JsonKey(
      name: 'finish_reason',
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
    )
    required CompletionResponseStreamChoiceFinishReason? finishReason,
  }) = _CompletionResponseStreamChoice;

  /// Object construction from a JSON representation
  factory CompletionResponseStreamChoice.fromJson(Map<String, dynamic> json) =>
      _$CompletionResponseStreamChoiceFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['index', 'delta', 'finish_reason'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'index': index,
      'delta': delta,
      'finish_reason': finishReason,
    };
  }
}

// ==========================================
// ENUM: CompletionResponseStreamChoiceFinishReason
// ==========================================

/// No Description
enum CompletionResponseStreamChoiceFinishReason {
  @JsonValue('stop')
  stop,
  @JsonValue('length')
  length,
  @JsonValue('error')
  error,
  @JsonValue('tool_calls')
  toolCalls,
}

// ==========================================
// CLASS: DeltaMessage
// ==========================================

/// No Description
@freezed
class DeltaMessage with _$DeltaMessage {
  const DeltaMessage._();

  /// Factory constructor for DeltaMessage
  const factory DeltaMessage({
    /// No Description
    @JsonKey(includeIfNull: false) String? role,

    /// No Description
    @JsonKey(includeIfNull: false) String? content,

    /// No Description
    @JsonKey(name: 'tool_calls', includeIfNull: false)
    List<ToolCall>? toolCalls,
  }) = _DeltaMessage;

  /// Object construction from a JSON representation
  factory DeltaMessage.fromJson(Map<String, dynamic> json) =>
      _$DeltaMessageFromJson(json);

  /// List of all property names of schema
  static const List<String> propertyNames = ['role', 'content', 'tool_calls'];

  /// Perform validations on the schema property values
  String? validateSchema() {
    return null;
  }

  /// Map representation of object (not serialized)
  Map<String, dynamic> toMap() {
    return {
      'role': role,
      'content': content,
      'tool_calls': toolCalls,
    };
  }
}
