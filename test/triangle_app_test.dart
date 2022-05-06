import 'package:detect_triangle_tdd/triangle_app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Detect the triangle type', () {
    test('Should throw Error When side(s) is less than 1', () {
      expect(() => detectTriangle(-1,2,2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1,-2,2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1,2,-2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1,-2,-2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(-1,2,-2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(-1,-2,2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(-1,-2,-2), throwsA(isA<Exception>()));
    });
  });
}