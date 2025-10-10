import 'package:flutter/material.dart';
import 'package:flutter_mvc/controllers/hexagono_controller.dart';
import 'package:flutter_mvc/views/entrada_hexagono.dart';

class ResultadoHexagonoPage extends StatelessWidget {
  final HexagonoController hexagonocontroller;

  const ResultadoHexagonoPage(this.hexagonocontroller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hexágono')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ir para entrada de dados do hexágono'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EntradaHexagono(),
              ),
            );
          },
        ),
      ),
    );
  }
}