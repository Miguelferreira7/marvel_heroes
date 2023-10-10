class CharacterImageModel {
  String? path;
  String? extension;

  CharacterImageModel({this.path, this.extension});

  CharacterImageModel.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    extension = json['extension'];
  }

  String get url => "$path.$extension";
}
