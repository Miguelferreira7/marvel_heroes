import 'comic_model.dart';

class ComicsDataModel {
  int? offset;
  int? limit;
  int? total;
  int? count;
  List<ComicModel> comics;

  ComicsDataModel({
    required this.offset,
    required this.limit,
    required this.total,
    required this.count,
    required this.comics,
  });

  factory ComicsDataModel.fromJson(Map<String, dynamic> json) {
    var resultsList = json['results'] as List;
    List<ComicModel> resultsData = resultsList
        .map((comicJson) => ComicModel.fromJson(comicJson))
        .toList();

    return ComicsDataModel(
      offset: json['offset'],
      limit: json['limit'],
      total: json['total'],
      count: json['count'],
      comics: resultsData,
    );
  }
}