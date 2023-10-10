import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/pages/character_details_page.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/pages/characters_list_page.dart';

class CharacterModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(CharactersListPage.ROUTE, child: (context) => const CharactersListPage());
    r.child(CharacterDetailsPage.ROUTE, child: (context) => CharacterDetailsPage(character: r.args.data));
  }

}