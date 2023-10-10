import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';
import 'modules/marvel_characters/characters_module.dart';
import 'modules/marvel_characters/cubit/marvel_cubit.dart';
import 'modules/marvel_characters/pages/characters_list_page.dart';
import 'modules/marvel_characters/service/marvel_service.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(Client.new);
    i.addSingleton(MarvelService.new);
    i.add(MarvelCubit.new);
  }

  @override
  List<Module> get imports => [
    CharacterModule(),
  ];

  @override
  void routes(r) {
    r.child(CharactersListPage.ROUTE, child: (context) => const CharactersListPage());
    r.module(CharactersListPage.ROUTE, module: CharacterModule());
  }
}
