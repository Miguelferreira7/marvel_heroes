class ComicImageModel {
  String? path;
  String? extension;

  ComicImageModel({
    required this.path,
    required this.extension,
  });

  factory ComicImageModel.fromJson(Map<String, dynamic> json) {
    return ComicImageModel(
      path: json['path'],
      extension: json['extension'],
    );
  }

  String get url => "$path.$extension";
}