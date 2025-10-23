import 'package:flutter/material.dart';
import '../controllers/triangulo_controller.dart';

class ResultadoTrianguloPage extends StatelessWidget {
  final TrianguloController trianguloController;

  const ResultadoTrianguloPage(this.trianguloController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultado do triângulo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Área: ${trianguloController.getArea()?.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              'Perímetro: ${trianguloController.getPerimetro()?.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              'Hipotenusa: ${trianguloController.getHipotenusa()?.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
