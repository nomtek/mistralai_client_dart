// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: invalid_annotation_target, unused_import

import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:meta/meta.dart';

import 'schema/schema.dart';

/// Enum of HTTP methods
enum HttpMethod { get, put, post, delete, options, head, patch, trace }

// ==========================================
// CLASS: MistralaiClientDartClientException
// ==========================================

/// HTTP exception handler for MistralaiClientDartClient
class MistralaiClientDartClientException implements Exception {
  MistralaiClientDartClientException({
    required this.message,
    required this.uri,
    required this.method,
    this.code,
    this.body,
  });

  final String message;
  final Uri uri;
  final HttpMethod method;
  final int? code;
  final Object? body;

  @override
  String toString() {
    Object? data;
    try {
      data = body is String ? jsonDecode(body as String) : body.toString();
    } catch (e) {
      data = body.toString();
    }
    final s = JsonEncoder.withIndent('  ').convert({
      'uri': uri.toString(),
      'method': method.name.toUpperCase(),
      'code': code,
      'message': message,
      'body': data,
    });
    return 'MistralaiClientDartClientException($s)';
  }
}

// ==========================================
// CLASS: MistralaiClientDartClient
// ==========================================

/// Client for Mistral AI API
///
/// Our Chat Completion and Embeddings APIs specification. Create your account on [La Plateforme](https://console.mistral.ai) to get access and read the [docs](https://docs.mistral.ai) to learn how to use it.
class MistralaiClientDartClient {
  /// Creates a new MistralaiClientDartClient instance.
  ///
  /// - [MistralaiClientDartClient.baseUrl] Override base URL (default: server url defined in spec)
  /// - [MistralaiClientDartClient.headers] Global headers to be sent with every request
  /// - [MistralaiClientDartClient.queryParams] Global query parameters to be sent with every request
  /// - [MistralaiClientDartClient.client] Override HTTP client to use for requests
  MistralaiClientDartClient({
    this.bearerToken = '',
    this.baseUrl,
    this.headers = const {},
    this.queryParams = const {},
    http.Client? client,
  })  : assert(
          baseUrl == null || baseUrl.startsWith('http'),
          'baseUrl must start with http',
        ),
        assert(
          baseUrl == null || !baseUrl.endsWith('/'),
          'baseUrl must not end with /',
        ),
        client = RetryClient(client ?? http.Client());

  /// Override base URL (default: server url defined in spec)
  final String? baseUrl;

  /// Global headers to be sent with every request
  final Map<String, String> headers;

  /// Global query parameters to be sent with every request
  final Map<String, dynamic> queryParams;

  /// HTTP client for requests
  final http.Client client;

  /// Authentication related variables
  String bearerToken;

  // ------------------------------------------
  // METHOD: endSession
  // ------------------------------------------

  /// Close the HTTP client and end session
  void endSession() => client.close();

  // ------------------------------------------
  // METHOD: onRequest
  // ------------------------------------------

  /// Middleware for HTTP requests (user can override)
  ///
  /// The request can be of type [http.Request] or [http.MultipartRequest]
  Future<http.BaseRequest> onRequest(http.BaseRequest request) {
    return Future.value(request);
  }

  // ------------------------------------------
  // METHOD: onStreamedResponse
  // ------------------------------------------

  /// Middleware for HTTP streamed responses (user can override)
  Future<http.StreamedResponse> onStreamedResponse(
    final http.StreamedResponse response,
  ) {
    return Future.value(response);
  }

  // ------------------------------------------
  // METHOD: onResponse
  // ------------------------------------------

  /// Middleware for HTTP responses (user can override)
  Future<http.Response> onResponse(http.Response response) {
    return Future.value(response);
  }

  // ------------------------------------------
  // METHOD: _jsonDecode
  // ------------------------------------------

  dynamic _jsonDecode(http.Response r) {
    return json.decode(utf8.decode(r.bodyBytes));
  }

  // ------------------------------------------
  // METHOD: _request
  // ------------------------------------------

  /// Reusable request method
  @protected
  Future<http.StreamedResponse> _request({
    required String baseUrl,
    required String path,
    required HttpMethod method,
    Map<String, dynamic> queryParams = const {},
    Map<String, String> headerParams = const {},
    bool isMultipart = false,
    String requestType = '',
    String responseType = '',
    Object? body,
  }) async {
    // Override with the user provided baseUrl
    baseUrl = this.baseUrl ?? baseUrl;

    // Ensure a baseUrl is provided
    assert(
      baseUrl.isNotEmpty,
      'baseUrl is required, but none defined in spec or provided by user',
    );

    // Add global query parameters
    queryParams = {...queryParams, ...this.queryParams};

    // Ensure query parameters are strings or iterable of strings
    queryParams = queryParams.map((key, value) {
      if (value is Iterable) {
        return MapEntry(key, value.map((v) => v.toString()));
      } else {
        return MapEntry(key, value.toString());
      }
    });

    // Build the request URI
    Uri uri = Uri.parse(baseUrl + path);
    if (queryParams.isNotEmpty) {
      uri = uri.replace(queryParameters: queryParams);
    }

    // Build the headers
    Map<String, String> headers = {...headerParams};

    // Add bearer token to request headers
    if (bearerToken.isNotEmpty) {
      headers['authorization'] = 'Bearer $bearerToken';
    }

    // Define the request type being sent to server
    if (requestType.isNotEmpty) {
      headers['content-type'] = requestType;
    }

    // Define the response type expected to receive from server
    if (responseType.isNotEmpty) {
      headers['accept'] = responseType;
    }

    // Add global headers
    headers.addAll(this.headers);

    // Build the request object
    http.BaseRequest request;
    if (isMultipart) {
      // Handle multipart request
      request = http.MultipartRequest(method.name.toUpperCase(), uri);
      request = request as http.MultipartRequest;
      if (body is List<http.MultipartFile>) {
        request.files.addAll(body);
      } else {
        request.files.add(body as http.MultipartFile);
      }
    } else {
      // Handle normal request
      request = http.Request(method.name.toUpperCase(), uri);
      request = request as http.Request;
      try {
        if (body != null) {
          switch (requestType) {
            case 'application/x-www-form-urlencoded':
              var parts = [];
              Map<String, String> bodyMap =
                  Map<String, String>.from(body as Map<dynamic, dynamic>);

              bodyMap.forEach((key, value) {
                String encodedPart =
                    '${Uri.encodeQueryComponent(key)}=${Uri.encodeQueryComponent(value)}';
                parts.add(encodedPart);
              });
              request.body = parts.join('&');

              break;
            default:
              request.body = json.encode(body);
              break;
          }
        }
      } catch (e) {
        // Handle request encoding error
        throw MistralaiClientDartClientException(
          uri: uri,
          method: method,
          message: 'Could not encode: ${body.runtimeType}',
          body: e,
        );
      }
    }

    // Add request headers
    request.headers.addAll(headers);

    // Handle user request middleware
    request = await onRequest(request);

    // Submit request
    return await client.send(request);
  }

  // ------------------------------------------
  // METHOD: makeRequestStream
  // ------------------------------------------

  /// Reusable request stream method
  @protected
  Future<http.StreamedResponse> makeRequestStream({
    required String baseUrl,
    required String path,
    required HttpMethod method,
    Map<String, dynamic> queryParams = const {},
    Map<String, String> headerParams = const {},
    bool isMultipart = false,
    String requestType = '',
    String responseType = '',
    Object? body,
  }) async {
    final uri = Uri.parse((this.baseUrl ?? baseUrl) + path);
    late http.StreamedResponse response;
    try {
      response = await _request(
        baseUrl: baseUrl,
        path: path,
        method: method,
        queryParams: queryParams,
        headerParams: headerParams,
        isMultipart: isMultipart,
        requestType: requestType,
        responseType: responseType,
        body: body,
      );
      // Handle user response middleware
      response = await onStreamedResponse(response);
    } catch (e) {
      // Handle request and response errors
      throw MistralaiClientDartClientException(
        uri: uri,
        method: method,
        message: 'Response error',
        body: e,
      );
    }

    // Check for successful response
    if ((response.statusCode ~/ 100) == 2) {
      return response;
    }

    // Handle unsuccessful response
    throw MistralaiClientDartClientException(
      uri: uri,
      method: method,
      message: 'Unsuccessful response',
      code: response.statusCode,
      body: (await http.Response.fromStream(response)).body,
    );
  }

  // ------------------------------------------
  // METHOD: makeRequest
  // ------------------------------------------

  /// Reusable request method
  @protected
  Future<http.Response> makeRequest({
    required String baseUrl,
    required String path,
    required HttpMethod method,
    Map<String, dynamic> queryParams = const {},
    Map<String, String> headerParams = const {},
    bool isMultipart = false,
    String requestType = '',
    String responseType = '',
    Object? body,
  }) async {
    final uri = Uri.parse((this.baseUrl ?? baseUrl) + path);
    late http.Response response;
    try {
      final streamedResponse = await _request(
        baseUrl: baseUrl,
        path: path,
        method: method,
        queryParams: queryParams,
        headerParams: headerParams,
        isMultipart: isMultipart,
        requestType: requestType,
        responseType: responseType,
        body: body,
      );
      response = await http.Response.fromStream(streamedResponse);
      // Handle user response middleware
      response = await onResponse(response);
    } catch (e) {
      // Handle request and response errors
      throw MistralaiClientDartClientException(
        uri: uri,
        method: method,
        message: 'Response error',
        body: e,
      );
    }

    // Check for successful response
    if ((response.statusCode ~/ 100) == 2) {
      return response;
    }

    // Handle unsuccessful response
    throw MistralaiClientDartClientException(
      uri: uri,
      method: method,
      message: 'Unsuccessful response',
      code: response.statusCode,
      body: response.body,
    );
  }

  // ------------------------------------------
  // METHOD: listModels
  // ------------------------------------------

  /// List Models
  ///
  /// List all models available to the user.
  ///
  /// `GET` `https://api.mistral.ai/v1/models`
  Future<ModelList> listModels() async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/models',
      method: HttpMethod.get,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
    );
    return ModelList.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: retrieveModel
  // ------------------------------------------

  /// Retrieve Model
  ///
  /// Retrieve a model information.
  ///
  /// `modelId`: The ID of the model to retrieve.
  ///
  /// `GET` `https://api.mistral.ai/v1/models/{model_id}`
  Future<http.Response> retrieveModel({
    required String modelId,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/models/$modelId',
      method: HttpMethod.get,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
    );
    return r;
  }

  // ------------------------------------------
  // METHOD: deleteModel
  // ------------------------------------------

  /// Delete Model
  ///
  /// Delete a fine-tuned model.
  ///
  /// `modelId`: The ID of the model to delete.
  ///
  /// `DELETE` `https://api.mistral.ai/v1/models/{model_id}`
  Future<DeleteModelOut> deleteModel({
    required String modelId,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/models/$modelId',
      method: HttpMethod.delete,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
    );
    return DeleteModelOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: listFiles
  // ------------------------------------------

  /// List Files
  ///
  /// Returns a list of files that belong to the user's organization.
  ///
  /// `page`: No description
  ///
  /// `pageSize`: No description
  ///
  /// `sampleType`: No description
  ///
  /// `source`: No description
  ///
  /// `search`: No description
  ///
  /// `purpose`: No description
  ///
  /// `GET` `https://api.mistral.ai/v1/files`
  Future<ListFilesOut> listFiles({
    int page = 0,
    int pageSize = 100,
    List<SampleType>? sampleType,
    List<Source>? source,
    String? search,
    FilePurpose? purpose,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/files',
      method: HttpMethod.get,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
      queryParams: {
        'page': page,
        'page_size': pageSize,
        if (sampleType != null) 'sample_type': sampleType,
        if (source != null) 'source': source,
        if (search != null) 'search': search,
        if (purpose != null) 'purpose': purpose,
      },
    );
    return ListFilesOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: uploadFile
  // ------------------------------------------

  /// Upload File
  ///
  /// Upload a file that can be used across various endpoints.
  ///
  /// The size of individual files can be a maximum of 512 MB. The Fine-tuning API only supports .jsonl files.
  ///
  /// Please contact us if you need to increase these storage limits.
  ///
  /// `request`: No description
  ///
  /// `POST` `https://api.mistral.ai/v1/files`
  Future<UploadFileOut> uploadFile({
    required List<http.MultipartFile> request,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/files',
      method: HttpMethod.post,
      isMultipart: true,
      requestType: 'multipart/form-data',
      responseType: 'application/json',
      body: request,
    );
    return UploadFileOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: retrieveFile
  // ------------------------------------------

  /// Retrieve File
  ///
  /// Returns information about a specific file.
  ///
  /// `fileId`: No description
  ///
  /// `GET` `https://api.mistral.ai/v1/files/{file_id}`
  Future<RetrieveFileOut> retrieveFile({
    required String fileId,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/files/$fileId',
      method: HttpMethod.get,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
    );
    return RetrieveFileOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: deleteFile
  // ------------------------------------------

  /// Delete File
  ///
  /// Delete a file.
  ///
  /// `fileId`: No description
  ///
  /// `DELETE` `https://api.mistral.ai/v1/files/{file_id}`
  Future<DeleteFileOut> deleteFile({
    required String fileId,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/files/$fileId',
      method: HttpMethod.delete,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
    );
    return DeleteFileOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: downloadFile
  // ------------------------------------------

  /// Download File
  ///
  /// Download a file
  ///
  /// `fileId`: No description
  ///
  /// `GET` `https://api.mistral.ai/v1/files/{file_id}/content`
  Future<String> downloadFile({
    required String fileId,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/files/$fileId/content',
      method: HttpMethod.get,
      isMultipart: false,
      requestType: '',
      responseType: 'application/octet-stream',
    );
    return r.body;
  }

  // ------------------------------------------
  // METHOD: getFineTuningJobs
  // ------------------------------------------

  /// Get Fine Tuning Jobs
  ///
  /// Get a list of fine-tuning jobs for your organization and user.
  ///
  /// `page`: The page number of the results to be returned.
  ///
  /// `pageSize`: The number of items to return per page.
  ///
  /// `model`: The model name used for fine-tuning to filter on. When set, the other results are not displayed.
  ///
  /// `createdAfter`: The date/time to filter on. When set, the results for previous creation times are not displayed.
  ///
  /// `createdByMe`: When set, only return results for jobs created by the API caller. Other results are not displayed.
  ///
  /// `status`: The current job state to filter on. When set, the other results are not displayed.
  ///
  /// `wandbProject`: The Weights and Biases project to filter on. When set, the other results are not displayed.
  ///
  /// `wandbName`: The Weight and Biases run name to filter on. When set, the other results are not displayed.
  ///
  /// `suffix`: The model suffix to filter on. When set, the other results are not displayed.
  ///
  /// `GET` `https://api.mistral.ai/v1/fine_tuning/jobs`
  Future<JobsOut> getFineTuningJobs({
    int page = 0,
    int pageSize = 100,
    String? model,
    String? createdAfter,
    bool createdByMe = false,
    String? status,
    String? wandbProject,
    String? wandbName,
    String? suffix,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/fine_tuning/jobs',
      method: HttpMethod.get,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
      queryParams: {
        'page': page,
        'page_size': pageSize,
        if (model != null) 'model': model,
        if (createdAfter != null) 'created_after': createdAfter,
        'created_by_me': createdByMe,
        if (status != null) 'status': status,
        if (wandbProject != null) 'wandb_project': wandbProject,
        if (wandbName != null) 'wandb_name': wandbName,
        if (suffix != null) 'suffix': suffix,
      },
    );
    return JobsOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: createFineTuningJobRaw
  // ------------------------------------------

  /// Create Fine Tuning Job
  ///
  /// Create a new fine-tuning job, it will be queued for processing.
  ///
  /// `dryRun`: * If `true` the job is not spawned, instead the query returns a handful of useful metadata   for the user to perform sanity checks (see `LegacyJobMetadataOut` response). * Otherwise, the job is started and the query returns the job ID along with some of the   input parameters (see `JobOut` response).
  ///
  /// `request`: No description
  ///
  /// `POST` `https://api.mistral.ai/v1/fine_tuning/jobs`
  Future<http.Response> createFineTuningJobRaw({
    bool? dryRun,
    required JobIn request,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/fine_tuning/jobs',
      method: HttpMethod.post,
      isMultipart: false,
      requestType: 'application/json',
      responseType: 'application/json',
      body: request,
      queryParams: {
        if (dryRun != null) 'dry_run': dryRun,
      },
    );
    return r;
  }

  // ------------------------------------------
  // METHOD: getFineTuningJob
  // ------------------------------------------

  /// Get Fine Tuning Job
  ///
  /// Get a fine-tuned job details by its UUID.
  ///
  /// `jobId`: The ID of the job to analyse.
  ///
  /// `GET` `https://api.mistral.ai/v1/fine_tuning/jobs/{job_id}`
  Future<DetailedJobOut> getFineTuningJob({
    required String jobId,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/fine_tuning/jobs/$jobId',
      method: HttpMethod.get,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
    );
    return DetailedJobOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: cancelFineTuningJob
  // ------------------------------------------

  /// Cancel Fine Tuning Job
  ///
  /// Request the cancellation of a fine tuning job.
  ///
  /// `jobId`: The ID of the job to cancel.
  ///
  /// `POST` `https://api.mistral.ai/v1/fine_tuning/jobs/{job_id}/cancel`
  Future<DetailedJobOut> cancelFineTuningJob({
    required String jobId,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/fine_tuning/jobs/$jobId/cancel',
      method: HttpMethod.post,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
    );
    return DetailedJobOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: startFineTuningJob
  // ------------------------------------------

  /// Start Fine Tuning Job
  ///
  /// Request the start of a validated fine tuning job.
  ///
  /// `jobId`: No description
  ///
  /// `POST` `https://api.mistral.ai/v1/fine_tuning/jobs/{job_id}/start`
  Future<DetailedJobOut> startFineTuningJob({
    required String jobId,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/fine_tuning/jobs/$jobId/start',
      method: HttpMethod.post,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
    );
    return DetailedJobOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: updateFineTunedModel
  // ------------------------------------------

  /// Update Fine Tuned Model
  ///
  /// Update a model name or description.
  ///
  /// `modelId`: The ID of the model to update.
  ///
  /// `request`: No description
  ///
  /// `PATCH` `https://api.mistral.ai/v1/fine_tuning/models/{model_id}`
  Future<FTModelOut> updateFineTunedModel({
    required String modelId,
    required UpdateFTModelIn request,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/fine_tuning/models/$modelId',
      method: HttpMethod.patch,
      isMultipart: false,
      requestType: 'application/json',
      responseType: 'application/json',
      body: request,
    );
    return FTModelOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: archiveFineTunedModel
  // ------------------------------------------

  /// Archive Fine Tuned Model
  ///
  /// Archive a fine-tuned model.
  ///
  /// `modelId`: The ID of the model to archive.
  ///
  /// `POST` `https://api.mistral.ai/v1/fine_tuning/models/{model_id}/archive`
  Future<ArchiveFTModelOut> archiveFineTunedModel({
    required String modelId,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/fine_tuning/models/$modelId/archive',
      method: HttpMethod.post,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
    );
    return ArchiveFTModelOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: unarchiveFineTunedModel
  // ------------------------------------------

  /// Unarchive Fine Tuned Model
  ///
  /// Un-archive a fine-tuned model.
  ///
  /// `modelId`: The ID of the model to unarchive.
  ///
  /// `DELETE` `https://api.mistral.ai/v1/fine_tuning/models/{model_id}/archive`
  Future<UnarchiveFTModelOut> unarchiveFineTunedModel({
    required String modelId,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/fine_tuning/models/$modelId/archive',
      method: HttpMethod.delete,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
    );
    return UnarchiveFTModelOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: jobsApiRoutesBatchGetBatchJobs
  // ------------------------------------------

  /// Get Batch Jobs
  ///
  /// Get a list of batch jobs for your organization and user.
  ///
  /// `page`: No description
  ///
  /// `pageSize`: No description
  ///
  /// `model`: No description
  ///
  /// `metadata`: No description
  ///
  /// `createdAfter`: No description
  ///
  /// `createdByMe`: No description
  ///
  /// `status`: No description
  ///
  /// `GET` `https://api.mistral.ai/v1/batch/jobs`
  Future<BatchJobsOut> jobsApiRoutesBatchGetBatchJobs({
    int page = 0,
    int pageSize = 100,
    String? model,
    Map<String, dynamic>? metadata,
    String? createdAfter,
    bool createdByMe = false,
    BatchJobStatus? status,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/batch/jobs',
      method: HttpMethod.get,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
      queryParams: {
        'page': page,
        'page_size': pageSize,
        if (model != null) 'model': model,
        if (metadata != null) 'metadata': metadata,
        if (createdAfter != null) 'created_after': createdAfter,
        'created_by_me': createdByMe,
        if (status != null) 'status': status.name,
      },
    );
    return BatchJobsOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: jobsApiRoutesBatchCreateBatchJob
  // ------------------------------------------

  /// Create Batch Job
  ///
  /// Create a new batch job, it will be queued for processing.
  ///
  /// `request`: No description
  ///
  /// `POST` `https://api.mistral.ai/v1/batch/jobs`
  Future<BatchJobOut> jobsApiRoutesBatchCreateBatchJob({
    required BatchJobIn request,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/batch/jobs',
      method: HttpMethod.post,
      isMultipart: false,
      requestType: 'application/json',
      responseType: 'application/json',
      body: request,
    );
    return BatchJobOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: jobsApiRoutesBatchGetBatchJob
  // ------------------------------------------

  /// Get Batch Job
  ///
  /// Get a batch job details by its UUID.
  ///
  /// `jobId`: No description
  ///
  /// `GET` `https://api.mistral.ai/v1/batch/jobs/{job_id}`
  Future<BatchJobOut> jobsApiRoutesBatchGetBatchJob({
    required String jobId,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/batch/jobs/$jobId',
      method: HttpMethod.get,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
    );
    return BatchJobOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: jobsApiRoutesBatchCancelBatchJob
  // ------------------------------------------

  /// Cancel Batch Job
  ///
  /// Request the cancellation of a batch job.
  ///
  /// `jobId`: No description
  ///
  /// `POST` `https://api.mistral.ai/v1/batch/jobs/{job_id}/cancel`
  Future<BatchJobOut> jobsApiRoutesBatchCancelBatchJob({
    required String jobId,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/batch/jobs/$jobId/cancel',
      method: HttpMethod.post,
      isMultipart: false,
      requestType: '',
      responseType: 'application/json',
    );
    return BatchJobOut.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: chatComplete
  // ------------------------------------------

  /// Chat Completion
  ///
  /// `request`: No description
  ///
  /// `POST` `https://api.mistral.ai/v1/chat/completions`
  Future<ChatCompletionResponse> chatComplete({
    required ChatCompletionRequest request,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/chat/completions',
      method: HttpMethod.post,
      isMultipart: false,
      requestType: 'application/json',
      responseType: 'application/json',
      body: request,
    );
    return ChatCompletionResponse.fromJson(
        _jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: fimComplete
  // ------------------------------------------

  /// Fim Completion
  ///
  /// FIM completion.
  ///
  /// `request`: No description
  ///
  /// `POST` `https://api.mistral.ai/v1/fim/completions`
  Future<FIMCompletionResponse> fimComplete({
    required FIMCompletionRequest request,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/fim/completions',
      method: HttpMethod.post,
      isMultipart: false,
      requestType: 'application/json',
      responseType: 'application/json',
      body: request,
    );
    return FIMCompletionResponse.fromJson(
        _jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: agentsComplete
  // ------------------------------------------

  /// Agents Completion
  ///
  /// `request`: No description
  ///
  /// `POST` `https://api.mistral.ai/v1/agents/completions`
  Future<ChatCompletionResponse> agentsComplete({
    required AgentsCompletionRequest request,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/agents/completions',
      method: HttpMethod.post,
      isMultipart: false,
      requestType: 'application/json',
      responseType: 'application/json',
      body: request,
    );
    return ChatCompletionResponse.fromJson(
        _jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: createEmbeddings
  // ------------------------------------------

  /// Embeddings
  ///
  /// Embeddings
  ///
  /// `request`: No description
  ///
  /// `POST` `https://api.mistral.ai/v1/embeddings`
  Future<EmbeddingResponse> createEmbeddings({
    required EmbeddingRequest request,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/embeddings',
      method: HttpMethod.post,
      isMultipart: false,
      requestType: 'application/json',
      responseType: 'application/json',
      body: request,
    );
    return EmbeddingResponse.fromJson(_jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: moderations
  // ------------------------------------------

  /// Moderations
  ///
  /// `request`: No description
  ///
  /// `POST` `https://api.mistral.ai/v1/moderations`
  Future<ClassificationResponse> moderations({
    required ClassificationRequest request,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/moderations',
      method: HttpMethod.post,
      isMultipart: false,
      requestType: 'application/json',
      responseType: 'application/json',
      body: request,
    );
    return ClassificationResponse.fromJson(
        _jsonDecode(r) as Map<String, dynamic>);
  }

  // ------------------------------------------
  // METHOD: chatModerations
  // ------------------------------------------

  /// Moderations Chat
  ///
  /// `request`: No description
  ///
  /// `POST` `https://api.mistral.ai/v1/chat/moderations`
  Future<ClassificationResponse> chatModerations({
    required ChatClassificationRequest request,
  }) async {
    final r = await makeRequest(
      baseUrl: 'https://api.mistral.ai',
      path: '/v1/chat/moderations',
      method: HttpMethod.post,
      isMultipart: false,
      requestType: 'application/json',
      responseType: 'application/json',
      body: request,
    );
    return ClassificationResponse.fromJson(
        _jsonDecode(r) as Map<String, dynamic>);
  }
}
