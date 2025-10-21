import '../models/circulo.dart';

class CirculoController {
  Circulo? circulo;

  void setDimensions(double diametro) {
    circulo = Circulo(diametro);
  }

   double getRaio(){
    return circulo?.raio() ?? 0.0;
  }

  double getArea() {
    return circulo?.area() ?? 0.0;
  }

  double getPerimetro() {
    return circulo?.perimetro() ?? 0.0;
  }
}
