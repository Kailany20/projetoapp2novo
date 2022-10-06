import 'package:flutter/material.dart';
import 'package:projeto_2/screens/tela_inicial.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFc67c9d),
        title: Text("Lembretes"),
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
      final DateTime newDate = await showDatePicker(
  context: context,
  initialDate: DateTime(2020, 11, 17),
  firstDate: DateTime(2017, 1),
  lastDate: DateTime(2022, 7),
  helpText: 'Select a date',
      ),
    );
    
  }

}

