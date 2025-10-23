import 'package:flutter/material.dart';
import '../controllers/retangulo_controller.dart';

class ResultadoRetanguloPage extends StatelessWidget {
  final RetanguloController retanguloController;

  const ResultadoRetanguloPage(this.retanguloController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultado do retângulo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Área: ${retanguloController.getArea()?.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              'Perímetro: ${retanguloController.getPerimetro()?.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              'Diagonal: ${retanguloController.getDiagonal()?.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
