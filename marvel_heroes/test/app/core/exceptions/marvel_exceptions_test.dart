import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_heroes/app/core/exceptions/marvel_exceptions.dart';

void main() {
  group('ServiceException', () {
    
    test('Should return one $Exception of type $MarvelApiExceptions', () {
      final exception = MarvelApiExceptions.serverError("error");
      expect(exception, isException);
    });

    test('Should return one exception message error', () {
      final exception = MarvelApiExceptions.serverError("error");
      expect(exception.error, equals("error"));
    });
  });
}