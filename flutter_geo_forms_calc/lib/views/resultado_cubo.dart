import 'package:flutter/material.dart';
import '../controllers/cubo_controller.dart';

class ResultadoCuboPage extends StatelessWidget {
  const ResultadoCuboPage(this.cubocontroller, {super.key});

  final CuboController cubocontroller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cubo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text('Aresta: ${cubocontroller.cubo?.aresta}'),
            Text('Área: ${cubocontroller.getArea()}'),
            Text('Perímetro: ${cubocontroller.getPerimetro()}'),
            Text('Volume: ${cubocontroller.getVolume()}'),
          ],
        ),
      ),
    );
  }
}