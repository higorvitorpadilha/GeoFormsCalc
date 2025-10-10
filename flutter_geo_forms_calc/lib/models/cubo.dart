class Cubo{
  // Declarar os atributos da clase cubo
  final double aresta;

  // Declaração do construtor com parametros nomeados
  Cubo(this.aresta);

  //Método de cálculo: área
  double area(){
    return 6 * (aresta * aresta);
  } 

  //Método de cálculo: perímetro
    double perimetro(){
    return 12 * aresta;
  }

  //Método de cálculo: volume
    double volume(){
    return aresta * aresta * aresta;
  }
}
