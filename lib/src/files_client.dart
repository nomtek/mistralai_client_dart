part of 'mistralai_client_dart_base.dart';

/// Class responsible for managing files related operations.
class FilesClient {
  FilesClient._(
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

  /// Creates a new file.
  ///
  /// [purpose] specifies the purpose of the uploaded [file].
  /// The default purpose is 'fine-tune'.
  Future<FileObject> create({
    required File file,
    String purpose = 'fine-tune',
  }) async {
    final request = http.MultipartRequest('POST', _apiUrlFactory.files())
      ..files.add(
        http.MultipartFile.fromBytes(
          'file',
          file.readAsBytesSync(),
          filename: file.path,
        ),
      )
      ..fields['purpose'] = purpose;

    return _requestJson(
      client: _httpClient,
      apiKey: _apiKey,
      request: request,
      fromJson: FileObject.fromJson,
      timeout: _timeout,
      sendMultipartFormData: true,
    );
  }

  /// Retrieves a file with the specified [fileId].
  Future<FileObject> retrieve({required String fileId}) async {
    return _requestJson(
      client: _httpClient,
      apiKey: _apiKey,
      request: http.Request('GET', _apiUrlFactory.file(fileId)),
      fromJson: FileObject.fromJson,
      timeout: _timeout,
    );
  }

  /// List all files.
  Future<FileObjects> list() async {
    return _requestJson(
      client: _httpClient,
      apiKey: _apiKey,
      request: http.Request('GET', _apiUrlFactory.files()),
      fromJson: FileObjects.fromJson,
      timeout: _timeout,
    );
  }

  /// Delete a file with the specified [fileId].
  Future<FileDeleted> delete({required String fileId}) async {
    return _requestJson(
      client: _httpClient,
      apiKey: _apiKey,
      request: http.Request('DELETE', _apiUrlFactory.file(fileId)),
      fromJson: FileDeleted.fromJson,
      timeout: _timeout,
    );
  }
}
