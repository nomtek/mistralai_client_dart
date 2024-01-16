part of '../mistralai_client_dart_base.dart';

Map<String, String> _createHeaders({required String apiKey}) => {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };

Future<T> _requestJson<T>({
  required http.Client client,
  required http.Request request,
  required String apiKey,
  required T Function(Map<String, dynamic> json) fromJson,
  required Duration timeout,
}) async {
  try {
    request.headers.addAll(_createHeaders(apiKey: apiKey));
    final streamResponse = await client.send(request).timeout(timeout);
    final response =
        await http.Response.fromStream(streamResponse).timeout(timeout);
    if (response.statusCode != 200) {
      throw MistralAIClientException(
        'Request $request failed with status code: ${response.statusCode}, '
        'body: ${response.body}',
      );
    }
    return fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } catch (e) {
    if (e is MistralAIClientException) {
      rethrow;
    }
    throw MistralAIClientException('Request $request failed: $e');
  }
}

// TODO(lgawron): implement stream request
Stream<T> _streamRequest<T>({
  required http.Client client,
  required String apiKey,
  required http.Request request,
  required T Function(Map<String, dynamic> json) fromJson,
  required Duration timeout,
}) async* {
  try {
    request.headers.addAll(_createHeaders(apiKey: apiKey));
    final response = await client.send(request).timeout(timeout);
    final responseStream = response.stream.transform(utf8.decoder);
    const dataPrefix = 'data: ';
    await for (final chunk in responseStream) {
      for (final chunkLine in chunk.split('\n')) {
        // we are only interested with lines starting with dataPrefix
        if (chunkLine.startsWith(dataPrefix)) {
          // skip dataPrefix and check data
          final dataContent = chunkLine.substring(dataPrefix.length).trim();
          // check if data stream is not done
          if (dataContent != '[DONE]') {
            // assume that data is json
            yield fromJson(
              jsonDecode(dataContent) as Map<String, dynamic>,
            );
          }
        }
      }
    }
  } catch (e) {
    throw MistralAIClientException('Request $request failed: $e');
  }
}
