import '../models/hexagono.dart';

class HexagonoController {
   Hexagono? hexagono;

  void setDimensions(double lado) {
    hexagono = Hexagono(lado);
  }


  double getArea() {
    return hexagono?.area() ?? 0;
  }

  double getPerimetro() {
    return hexagono?.perimetro() ?? 0;
  }
}
