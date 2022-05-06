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

    test('Should throw Error When 2 shorter side <= longest side (triangle inquality)', () {
      expect(() => detectTriangle(4,1,2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(5,1,3), throwsA(isA<Exception>()));
    });

    test('Should return SamaSisi Type when all sides are equal', () {
      expect(detectTriangle(1, 1, 1), TriangleType.SamaSisi);
      expect(detectTriangle(2, 2, 2), TriangleType.SamaSisi);
      expect(detectTriangle(200, 200, 200), TriangleType.SamaSisi);
      expect(detectTriangle(5, 3, 4), isNot(TriangleType.SamaSisi));
      expect(detectTriangle(2, 2, 1), isNot(TriangleType.SamaSisi));
    });

    test('Should return SamaKaki Type when 2 sides are equal', () {
      expect(detectTriangle(2, 4, 4), TriangleType.SamaKaki);
      expect(detectTriangle(2, 1, 2), TriangleType.SamaKaki);
      expect(detectTriangle(3, 3, 1), TriangleType.SamaKaki);
      expect(detectTriangle(2, 2, 1), TriangleType.SamaKaki);
      expect(detectTriangle(100, 3, 100), TriangleType.SamaKaki);
      expect(detectTriangle(200, 200, 2), TriangleType.SamaKaki);
      expect(detectTriangle(4, 1, 4), TriangleType.SamaKaki);
      expect(detectTriangle(1, 1, 1), isNot(TriangleType.SamaKaki));
      expect(detectTriangle(5, 7, 3), isNot(TriangleType.SamaKaki));
    });

    test('Should return TakBeraturean Type when no sides are equal', () {
      expect(detectTriangle(2, 5, 6), TriangleType.TakBeraturan);
      expect(detectTriangle(6, 4, 9), TriangleType.TakBeraturan);
      expect(detectTriangle(7, 6, 2), TriangleType.TakBeraturan);
      expect(detectTriangle(1, 1, 1), isNot(TriangleType.TakBeraturan));
      expect(detectTriangle(2, 4, 4), isNot(TriangleType.TakBeraturan));
    });
  });
}