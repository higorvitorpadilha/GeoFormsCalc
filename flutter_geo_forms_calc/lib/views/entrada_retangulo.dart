import 'package:flutter/material.dart';
import '../controllers/retangulo_controller.dart';
import 'resultado_triangulo.dart';

class EntradaRetanguloPage extends StatelessWidget {
  EntradaRetanguloPage({super.key});

  //Inicializar o controller do retangulo
  final RetanguloController retanguloController = RetanguloController();

  //Declara componentes textEditController para capturar
  //os dados de entrada
  final TextEditingController larguraController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de dados do retângulo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: larguraController,
              autofocus: true,
              decoration: const InputDecoration(labelText: "Largura"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: alturaController,
              decoration: const InputDecoration(labelText: "Altura"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double largura = double.parse(larguraController.text);
                double altura = double.parse(alturaController.text);
                retanguloController.setDimensions(largura, altura);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultadoRetanguloPage(retanguloController)
                  ),
                );
              },
              child: const Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
