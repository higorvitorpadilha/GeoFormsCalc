import '../models/triangulo.dart';

class TrianguloController {
  Triangulo? triangulo;

  void setDimensions(double base, double altura) {
    triangulo = Triangulo(base: base, altura: altura);
  }

  double? getArea() {
    return triangulo?.calcularArea();
  }

  double? getPerimetro() {
    return triangulo?.calcularPerimetro();
  }

  double? getHipotenusa() {
    return triangulo?.calcularHipotenusa();
  }
}
