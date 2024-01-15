part of '../mistralai_client_dart_base.dart';

Map<String, String> _createHeaders({required String apiKey}) => {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };

Future<T> _requestJson<T>(
  http.Client client,
  Map<String, String> headers,
  http.Request request,
  T Function(Map<String, dynamic> json) fromJson,
) async {
  try {
    final streamResponse = await client.send(request);
    final response = await http.Response.fromStream(streamResponse);
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
// Stream<T> _streamRequest<T>() {
//   throw UnimplementedError('Stream request is not implemented yet.');
// }
