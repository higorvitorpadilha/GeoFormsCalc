import '../models/esfera.dart';

class EsferaController {
  Esfera? esfera;

  void setDimensions(double diametro) {
    esfera = Esfera(diametro);
  }

  double getRaio(){
    return esfera?.raio() ?? 0.0;
  }

  double getArea() {
    return esfera?.area() ?? 0.0;
  }

  double getVolume() {
    return esfera?.volume() ?? 0.0;
  }
}
