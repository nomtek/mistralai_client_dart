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

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
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
