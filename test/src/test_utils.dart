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
  ) async => jsonDecode(await request.finalize().bytesToString())
        as Map<String, dynamic>;
}

/// Returns a copy of [original] with the given [body].
http.StreamedRequest _copyRequest(
  http.BaseRequest original,
  Stream<List<int>> body,
) {
  final request = http.StreamedRequest(original.method, original.url)
    ..contentLength = original.contentLength
    ..followRedirects = original.followRedirects
    ..headers.addAll(original.headers)
    ..maxRedirects = original.maxRedirects
    ..persistentConnection = original.persistentConnection;

  body.listen(request.sink.add,
      onError: request.sink.addError,
      onDone: request.sink.close,
      cancelOnError: true);

  return request;
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
