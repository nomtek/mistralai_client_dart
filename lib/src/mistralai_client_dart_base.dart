
class MistralAIClient {

  MistralAIClient({
    required this.apiKey,
    this.baseUrl = 'https://api.mistral.ai',
    this.timeout = const Duration(seconds: 120),
    this.maxRetries = 5,
  });

  final String apiKey;
  final String baseUrl;
  final Duration timeout;
  final int maxRetries;


  Future<List<String>> listModels() {
    return Future.value([]);
  }

  Future<String> chat() {
    return Future.value('');
  }

  Future<String> streamChat() {
    return Future.value('');
  }

  Future<String> embednings() {
    return Future.value('');
  }
}

class ModelsList {
  String? object;
  List<Data>? data;

  ModelsList({this.object, this.data});

  ModelsList.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? object;
  int? created;
  String? ownedBy;

  Data({this.id, this.object, this.created, this.ownedBy});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    object = json['object'];
    created = json['created'];
    ownedBy = json['owned_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['object'] = this.object;
    data['created'] = this.created;
    data['owned_by'] = this.ownedBy;
    return data;
  }
}
