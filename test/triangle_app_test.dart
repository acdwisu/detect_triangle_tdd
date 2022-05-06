import 'package:detect_triangle_tdd/triangle_app.dart';
import 'package:detect_triangle_tdd/triangle_type.dart';
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

    test('Should return SamaSisi Type when all sides are equal', () {
      expect(detectTriangle(1, 1, 1), TriangleType.SamaSisi);
      expect(detectTriangle(2, 2, 2), TriangleType.SamaSisi);
      expect(detectTriangle(1, 2, 2), isNot(TriangleType.SamaSisi));
      expect(detectTriangle(2, 2, 1), isNot(TriangleType.SamaSisi));
      expect(detectTriangle(2, 1, 2), isNot(TriangleType.SamaSisi));
    });

    test('Should return SamaKaki Type when 2 sides are equal', () {
      expect(detectTriangle(2, 1, 1), TriangleType.SamaKaki);
      expect(detectTriangle(2, 1, 2), TriangleType.SamaKaki);
      expect(detectTriangle(1, 1, 2), TriangleType.SamaKaki);
      expect(detectTriangle(1, 1, 1), isNot(TriangleType.SamaKaki));
      expect(detectTriangle(2, 1, 3), isNot(TriangleType.SamaKaki));
    });

    test('Should return TakBeraturean Type when no sides are equal', () {
      expect(detectTriangle(2, 5, 1), TriangleType.TakBeraturan);
      expect(detectTriangle(1, 4, 9), TriangleType.TakBeraturan);
      expect(detectTriangle(7, 6, 2), TriangleType.TakBeraturan);
      expect(detectTriangle(1, 1, 1), isNot(TriangleType.TakBeraturan));
      expect(detectTriangle(2, 1, 2), isNot(TriangleType.TakBeraturan));
    });
  });
}