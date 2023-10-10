import 'character_model.dart';

class CharactersDataModel {
  int? offset;
  int? limit;
  int? total;
  int? count;
  List<CharacterModel>? characters;

  CharactersDataModel({this.offset, this.limit, this.total, this.count, this.characters});

  CharactersDataModel.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    limit = json['limit'];
    total = json['total'];
    count = json['count'];
    if (json['results'] != null) {
      characters = <CharacterModel>[];
      json['results'].forEach((v) {
        characters!.add(CharacterModel.fromJson(v));
      });
    }
  }
}