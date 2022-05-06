import 'package:detect_triangle_tdd/triangle_type.dart';

TriangleType? detectTriangle(num side1, num side2, num side3) {
  final sides = [side1, side2, side3];

  int countEqual = 0;

  sides.sort();

  if(sides[0] + sides[1] <= sides[2]) {
    throw Exception('Inequal Triangle');
  }
  
  sides.fold<List<num>>([0], (previousValue, element) {
    if(element < 1) {
      throw Exception();
    }
    
    if(previousValue.contains(element)) {
      countEqual++;
    }
    
    return previousValue..add(element);
  });

  if(countEqual == 2) {
    return TriangleType.SamaSisi;
  } else if(countEqual == 1) {
    return TriangleType.SamaKaki;
  } else {
    return TriangleType.TakBeraturan;
  }
}