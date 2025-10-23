import 'package:flutter/material.dart';
import '../controllers/triangulo_controller.dart';
import '../views/resultado_triangulo.dart';

class EntradaTrianguloPage extends StatelessWidget {
  EntradaTrianguloPage({super.key});

  //Inicializar o controller do triangulo
  final TrianguloController trianguloController = TrianguloController();

  //Declara componentes textEditController para capturar
  //os dados de entrada
  final TextEditingController baseController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de dados do triângulo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: baseController,
              autofocus: true,
              decoration: const InputDecoration(labelText: "Base"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: alturaController,
              decoration: const InputDecoration(labelText: "Altura"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double base = double.parse(baseController.text);
                double altura = double.parse(alturaController.text);
                trianguloController.setDimensions(base, altura);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultadoTrianguloPage(trianguloController)
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
