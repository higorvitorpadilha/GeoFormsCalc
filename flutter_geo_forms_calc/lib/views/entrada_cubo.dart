import 'package:flutter/material.dart';
import '../controllers/cubo_controller.dart';
import '../views/resultado_cubo.dart';

class EntradaCuboPage extends StatelessWidget {
   EntradaCuboPage({super.key});

//Inicializar o controller do cubo
  final CuboController cubocontroller = CuboController();

//Declara componentes texteditController para capturar 
//os dados de entrada
final TextEditingController arestaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de dados do cubo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            TextField(
                controller: arestaController,
                autofocus: true,
                decoration: const InputDecoration(labelText: "Aresta"),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                onPressed: () {
                  double aresta = double.parse(arestaController.text);
                  cubocontroller.setDimensions(aresta);
                  Navigator.push(
                    context,
                   MaterialPageRoute(
                      builder: (context) => ResultadoCuboPage(cubocontroller)
                    ),
                  );
                },
                child: const Text('Calcular'),
                ),
          ]
        )
      )
    );
  }
}