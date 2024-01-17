import 'dart:convert';

import 'package:http/http.dart' as http;

class FakeHttpJsonResponseClient with http.BaseClient {
  FakeHttpJsonResponseClient({
    this.responseBody = '{}',
    this.httpStatusCode = 200,
  });

  final String responseBody;
  final int httpStatusCode;
  http.BaseRequest get request => _request;
  late http.BaseRequest _request;
  Map<String, dynamic> get requestBody => _requestBody;
  late Map<String, dynamic> _requestBody;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    // capture request body and decode it to json
    _requestBody = await _getJsonRequestBody(request);
    _request = request;
    return Future.value(
      http.StreamedResponse(
        http.ByteStream.fromBytes(
          utf8.encode(responseBody),
        ),
        httpStatusCode,
        headers: {
          'content-type': 'application/json',
        },
        request: request,
      ),
    );
  }

  Future<Map<String, dynamic>> _getJsonRequestBody(
    http.BaseRequest request,
  ) async {
    final requestBytesStream = request.finalize();
    final requestBodyString = await requestBytesStream.bytesToString();
    if (requestBodyString.isEmpty) {
      return {};
    }
    final requestBodyJson =
        jsonDecode(requestBodyString) as Map<String, dynamic>;
    return requestBodyJson;
  }
}

/// A fake HTTP client that returns a [http.StreamedResponse] with a
/// [http.ByteStream] that emits the given [responseChunks] in order.
class FakeStreamedResponseHttpClient with http.BaseClient {
  const FakeStreamedResponseHttpClient({
    this.responseChunks = const [''],
    this.httpStatusCode = 200,
  });

  final List<String> responseChunks;
  final int httpStatusCode;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) => Future.value(
        http.StreamedResponse(
          Stream.fromIterable(responseChunks.map(utf8.encode)),
          httpStatusCode,
          headers: {'content-type': 'application/json'},
          request: request,
        ),
      );
}

class FakeDelayedHttpClient with http.BaseClient {
  const FakeDelayedHttpClient({
    this.delay = const Duration(milliseconds: 3),
  });

  final Duration delay;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) =>
      Future.delayed(
        delay,
        () => http.StreamedResponse(
          http.ByteStream.fromBytes(
            utf8.encode('{}'),
          ),
          200,
          headers: {
            'content-type': 'application/json',
          },
          request: request,
        ),
      );
}
