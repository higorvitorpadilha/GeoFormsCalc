import '../models/cubo.dart';

class CuboController {
  //declarar o objeto cubo da classe cubo
  Cubo? cubo;

  //Definir as dimensões do cubo: aresta
  void setDimensions(double aresta) {
    cubo = Cubo(aresta);
  }

  //Retornar a área do cubo
  double getArea(){
    return cubo?.area() ?? 0.0;
  }
  
  //Retornar o perímetro do cubo
  double getPerimetro() {
    return cubo?.perimetro() ?? 0.0;
  }

  //Retornar o volume do cubo
  double getVolume(){
    return cubo?.volume() ?? 0.0;
  }
}