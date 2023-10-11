import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_heroes/app/app_module.dart';
import 'package:marvel_heroes/app/modules/marvel_characters/pages/characters_list_page.dart';

void main() {

  Modular.bindModule(AppModule());

  testWidgets("Characters List Widgets test", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: CharactersListPage()));

    await tester.pumpAndSettle();
    expect(find.text(" HEROES"), findsOneWidget);
    expect(find.byType(CharactersListPage), findsOneWidget);
  });
}