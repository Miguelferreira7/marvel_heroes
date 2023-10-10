import 'character_comics_model.dart';
import 'character_image_model.dart';
import 'character_urls_model.dart';

class CharacterModel {
  int? id;
  String? name;
  String? description;
  String? modified;
  CharacterImageModel? image;
  String? resourceURI;
  CharacterComicsModel? comics;
  CharacterComicsModel? series;
  CharacterComicsModel? stories;
  CharacterComicsModel? events;
  List<CharacterUrlsModel>? urls;

  CharacterModel(
      {this.id,
        this.name,
        this.description,
        this.modified,
        this.image,
        this.resourceURI,
        this.comics,
        this.series,
        this.stories,
        this.events,
        this.urls});

  CharacterModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    modified = json['modified'];
    image = json['thumbnail'] != null
        ? CharacterImageModel.fromJson(json['thumbnail'])
        : null;
    resourceURI = json['resourceURI'];
    comics =
    json['comics'] != null ? CharacterComicsModel.fromJson(json['comics']) : null;
    series =
    json['series'] != null ? CharacterComicsModel.fromJson(json['series']) : null;
    stories =
    json['stories'] != null ? CharacterComicsModel.fromJson(json['stories']) : null;
    events =
    json['events'] != null ? CharacterComicsModel.fromJson(json['events']) : null;
    if (json['urls'] != null) {
      urls = <CharacterUrlsModel>[];
      json['urls'].forEach((v) {
        urls!.add(CharacterUrlsModel.fromJson(v));
      });
    }
  }

}
