import 'comics_data_model.dart';

class ComicsResponseModel {
  int? code;
  String? status;
  String? copyright;
  String? attributionText;
  String? attributionHTML;
  String? etag;
  ComicsDataModel? data;

  ComicsResponseModel({
    required this.code,
    required this.status,
    required this.copyright,
    required this.attributionText,
    required this.attributionHTML,
    required this.etag,
    required this.data,
  });

  factory ComicsResponseModel.fromJson(Map<String, dynamic> json) {
    return ComicsResponseModel(
      code: json['code'],
      status: json['status'],
      copyright: json['copyright'],
      attributionText: json['attributionText'],
      attributionHTML: json['attributionHTML'],
      etag: json['etag'],
      data: ComicsDataModel.fromJson(json['data']),
    );
  }
}

