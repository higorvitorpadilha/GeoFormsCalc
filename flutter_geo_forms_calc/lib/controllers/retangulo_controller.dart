import '../models/retangulo.dart';

class RetanguloController {
  Retangulo? retangulo;

  void setDimensions(double largura, double altura) {
    retangulo = Retangulo(largura: largura, altura: altura);
  }

  double? getArea() {
    return retangulo?.calcularArea();
  }

  double? getPerimetro() {
    return retangulo?.calcularPerimetro();
  }

  double? getDiagonal() {
    return retangulo?.calcularDiagonal();
  }
}
