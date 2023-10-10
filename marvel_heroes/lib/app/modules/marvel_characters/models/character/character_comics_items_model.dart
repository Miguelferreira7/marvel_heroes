class CharacterComicsItemModel {
  String? resourceURI;
  String? name;
  String? type;

  CharacterComicsItemModel({this.resourceURI, this.name, this.type});

  CharacterComicsItemModel.fromJson(Map<String, dynamic> json) {
    resourceURI = json['resourceURI'];
    name = json['name'];
    type = json['type'];
  }
}