import 'dart:math' as math;

class Hexagono {
  final double lado;

  Hexagono(this.lado);

  double area() {
    return (3 * math.sqrt(3) * lado * lado) / 2;
  }

  double perimetro() {
    return 6 * lado;
  }
}