import 'package:flutter/material.dart';
import '../controllers/esfera_controller.dart';

class ResultadoEsferaPage extends StatelessWidget {
  const ResultadoEsferaPage(this.esferacontroller, {super.key});

  final EsferaController esferacontroller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Esfera')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text('Diâmetro: ${esferacontroller.esfera?.diametro}'),
            Text('Raio: ${esferacontroller.getRaio}'),
            Text('Área: ${esferacontroller.getArea()}'),  
            Text('Volume: ${esferacontroller.getVolume()}'),
          ],
        ),
      ),
    );
  }
}