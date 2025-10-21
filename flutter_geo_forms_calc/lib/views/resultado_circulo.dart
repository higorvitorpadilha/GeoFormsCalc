import 'package:flutter/material.dart';
import '../controllers/circulo_controller.dart';

class ResultadoCirculoPage extends StatelessWidget {
  const ResultadoCirculoPage(this.circulocontroller, {super.key});

  final CirculoController circulocontroller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Círculo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text('Diâmetro: ${circulocontroller.circulo?.diametro}'),
            Text('Raio: ${circulocontroller.getRaio}'),
            Text('Área: ${circulocontroller.getArea()}'),  
            Text('Perímetro: ${circulocontroller.getPerimetro()}'),
          ],
        ),
      ),
    );
  }
}