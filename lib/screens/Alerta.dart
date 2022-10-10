import 'package:flutter/material.dart';
import 'package:projeto_2/screens/botoes.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSalvar;
  VoidCallback onCancelar;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSalvar,
    required this.onCancelar,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFFc67c9d),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Adicionar nova tarefa",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Botoes(text: "Salvar", onPressed: onSalvar),
                const SizedBox(
                  width: 4,
                ),
                Botoes(text: "Cancelar", onPressed: onCancelar),
              ],
            )
          ],
        ),
      ),
    );
  }
}
