import 'character_comics_items_model.dart';

class CharacterComicsModel {
  int? available;
  String? collectionURI;
  List<CharacterComicsItemModel>? items;
  int? returned;

  CharacterComicsModel({this.available, this.collectionURI, this.items, this.returned});

  CharacterComicsModel.fromJson(Map<String, dynamic> json) {
    available = json['available'];
    collectionURI = json['collectionURI'];
    if (json['items'] != null) {
      items = <CharacterComicsItemModel>[];
      json['items'].forEach((v) {
        items!.add(CharacterComicsItemModel.fromJson(v));
      });
    }
    returned = json['returned'];
  }
}
