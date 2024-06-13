part of 'mistralai_client_dart_base.dart';

/// Class responsible for managing jobs related operations.
class JobsClient {
  JobsClient._(
    this._httpClient,
    this._apiKey,
    this._timeout,
    this._apiUrlFactory,
  );

  /// HTTP client used to send requests.
  final http.Client _httpClient;

  /// required to authenticate requests.
  final String _apiKey;

  /// maximum wait time for response.
  final Duration _timeout;

  /// factory used to create URLs for requests.
  final MistralAIUrlFactory _apiUrlFactory;

  /// Creates a new fine-tune job.
  ///
  /// [model] specifies the model to be fine-tuned.
  ///
  /// The [trainingFiles] contains as a list of file IDs of previously
  /// uploaded training files via [FilesClient.create].
  ///
  /// An optional list of [validationFiles] can be provided to improve the
  /// fine-tuning process.
  ///
  /// The [hyperparameters] specify the fine-tuning parameters for the job.
  ///
  /// The [suffix] is an optional suffix added to the fine-tuned model name.
  ///
  /// The [integrations] is an optional list of integrations to enable for
  /// the fine-tuning job.
  Future<Job> create({
    required String model,
    required List<String> trainingFiles,
    List<String> validationFiles = const [],
    TrainingParameters hyperparameters = const TrainingParameters(
      trainingSteps: 1800,
      learningRate: 1.0e-4,
    ),
    String? suffix,
    List<Integration>? integrations,
  }) async {
    return _requestJson(
      client: _httpClient,
      apiKey: _apiKey,
      request: http.Request('POST', _apiUrlFactory.jobs())
        ..body = jsonEncode({
          'model': model,
          'training_files': trainingFiles,
          'validation_files': validationFiles,
          'hyperparameters': hyperparameters.toJson(),
          'suffix': suffix,
          'integrations': integrations?.map((e) => e.toJson()).toList(),
        }),
      fromJson: Job.fromJson,
      timeout: _timeout,
    );
  }

  /// Retrieves a job with the specified [jobId].
  Future<Job> retrieve({required String jobId}) async {
    return _requestJson(
      client: _httpClient,
      apiKey: _apiKey,
      request: http.Request('GET', _apiUrlFactory.job(jobId)),
      fromJson: Job.fromJson,
      timeout: _timeout,
    );
  }

  /// List all jobs.
  Future<Jobs> list() async {
    return _requestJson(
      client: _httpClient,
      apiKey: _apiKey,
      request: http.Request('GET', _apiUrlFactory.jobs()),
      fromJson: Jobs.fromJson,
      timeout: _timeout,
    );
  }

  /// Cancel a job with the specified [jobId].
  Future<Job> cancel({required String jobId}) async {
    return _requestJson(
      client: _httpClient,
      apiKey: _apiKey,
      request: http.Request('POST', _apiUrlFactory.jobCancel(jobId)),
      fromJson: Job.fromJson,
      timeout: _timeout,
    );
  }
}
