import 'comic_image_model.dart';

class ComicModel {
  int? id;
  int? digitalId;
  String? title;
  int? issueNumber;
  String? variantDescription;
  String? description;
  String? modified;
  String? isbn;
  String? upc;
  String? diamondCode;
  String? ean;
  String? issn;
  String? format;
  int? pageCount;
  ComicImageModel? image;

  ComicModel({
    required this.id,
    required this.digitalId,
    required this.title,
    required this.issueNumber,
    this.variantDescription,
    required this.description,
    required this.modified,
    this.isbn,
    this.upc,
    this.diamondCode,
    this.ean,
    this.issn,
    this.format,
    required this.pageCount,
    this.image,
  });

  factory ComicModel.fromJson(Map<String, dynamic> json) {
    return ComicModel(
      id: json['id'],
      digitalId: json['digitalId'],
      title: json['title'],
      issueNumber: json['issueNumber'],
      variantDescription: json['variantDescription'],
      description: json['description'],
      modified: json['modified'],
      isbn: json['isbn'],
      upc: json['upc'],
      diamondCode: json['diamondCode'],
      ean: json['ean'],
      issn: json['issn'],
      format: json['format'],
      pageCount: json['pageCount'],
      image: json['thumbnail'] != null
          ? ComicImageModel.fromJson(json['thumbnail'])
          : null,
    );
  }
}
