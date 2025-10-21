import 'package:flutter/material.dart';
import '../controllers/esfera_controller.dart';
import '../views/resultado_esfera.dart';

class EntradaEsferaPage extends StatelessWidget {
   EntradaEsferaPage({super.key});

//Inicializar o controller do cubo
  final EsferaController esferacontroller = EsferaController();

//Declara componentes texteditController para capturar 
//os dados de entrada
final TextEditingController diametroController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de dados da esfera')),
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
                  esferacontroller.setDimensions(diametro);
                  Navigator.push(
                    context,
                   MaterialPageRoute(
                      builder: (context) => ResultadoEsferaPage(esferacontroller)
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