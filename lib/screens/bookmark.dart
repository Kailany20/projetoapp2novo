import 'package:flutter/material.dart';
import 'package:projeto_2/screens/tela_inicial.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFc67c9d),
        title: const Text("Lembretes"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: Container(
        color: Colors.transparent,
        child: widgetTextField(),
      ),
    );
  }

  widgetTextField() {
    return TextField(
      decoration: InputDecoration(
        fillColor: Color.fromARGB(255, 231, 180, 203),
        filled: true,
        border: InputBorder.none,
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
