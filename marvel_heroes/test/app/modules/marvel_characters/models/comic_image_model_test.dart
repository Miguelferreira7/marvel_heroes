import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/models/comics/comic_image_model.dart';

void main() {
  final comicImage = ComicImageModel(path: "image", extension: "png");

  test('Should return the path concatenated with extension', () {
    expect(comicImage.url, "image.png");
  });



}