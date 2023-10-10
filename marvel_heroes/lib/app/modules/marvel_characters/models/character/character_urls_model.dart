class CharacterUrlsModel {
  String? type;
  String? url;

  CharacterUrlsModel({this.type, this.url});

  CharacterUrlsModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
  }
}