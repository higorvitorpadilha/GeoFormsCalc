import 'dart:math';

class Esfera {
  final double diametro;

  Esfera(this.diametro);

  double raio() {
    return diametro / 2;
  }

  double area() {
    return 4 * pi * pow((diametro / 2), 2);
  }

  double volume() {
    return (4 / 3) * pi * pow((diametro / 2), 3);
  }
}
