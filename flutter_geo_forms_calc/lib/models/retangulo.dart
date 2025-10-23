import 'dart:math'; // <--- Adicione isso no topo do arquivo

class Retangulo {
  double largura;
  double altura;

  Retangulo({required this.largura, required this.altura});

  double calcularArea() {
    return largura * altura;
  }

  double calcularPerimetro() {
    return 2 * (largura + altura);
  }

  double calcularDiagonal() {
    return sqrt(largura * largura + altura * altura); // <--- Aqui está a correção
  }
}
