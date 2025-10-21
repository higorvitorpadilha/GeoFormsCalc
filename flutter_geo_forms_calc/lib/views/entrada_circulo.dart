import 'package:flutter/material.dart';
import '../controllers/circulo_controller.dart';
import '../views/resultado_circulo.dart';

class EntradaCirculoPage extends StatelessWidget {
   EntradaCirculoPage({super.key});

//Inicializar o controller do cubo
  final CirculoController circulocontroller = CirculoController();

//Declara componentes texteditController para capturar 
//os dados de entrada
final TextEditingController diametroController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de dados do círculo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            TextField(
                controller: diametroController,
                autofocus: true,
                decoration: const InputDecoration(labelText: "Diâmetro"),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                onPressed: () {
                  double diametro = double.parse(diametroController.text);
                  circulocontroller.setDimensions(diametro);
                  Navigator.push(
                    context,
                   MaterialPageRoute(
                      builder: (context) => ResultadoCirculoPage(circulocontroller)
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