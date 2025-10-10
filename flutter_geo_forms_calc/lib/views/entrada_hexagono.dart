import 'package:flutter/material.dart';
import 'package:flutter_mvc/controllers/hexagono_controller.dart';
import 'package:flutter_mvc/views/resultado_hexagono.dart';

class EntradaHexagono extends StatelessWidget {
  final HexagonoController hexagonocontroller = HexagonoController();

  final TextEditingController ladoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada Hexágono'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Lado do Hexágono'),
              autofocus: true,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                double? lado = double.tryParse(value);
                if (lado != null) {
                  hexagonocontroller.setDimensions(lado);
                }
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double lado = double.parse(ladoController.text);
                hexagonocontroller.setDimensions(lado);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultadoHexagonoPage(hexagonocontroller),
                  ),
                );
              },
              child: Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
