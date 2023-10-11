import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/models/character/character_image_model.dart';

void main() {
  final characterImage = CharacterImageModel(path: "image", extension: "png");

  test('Should return the path concatenated with extension', () {
    expect(characterImage.url, "image.png");
  });
}