import 'characters_data_model.dart';

class CharactersResponseModel {
  int? code;
  String? status;
  String? copyright;
  String? attributionText;
  String? attributionHTML;
  String? etag;
  CharactersDataModel? data;

  CharactersResponseModel(
      {this.code,
        this.status,
        this.copyright,
        this.attributionText,
        this.attributionHTML,
        this.etag,
        this.data});

  CharactersResponseModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    copyright = json['copyright'];
    attributionText = json['attributionText'];
    attributionHTML = json['attributionHTML'];
    etag = json['etag'];
    data = json['data'] != null ? CharactersDataModel.fromJson(json['data']) : null;
  }
}


