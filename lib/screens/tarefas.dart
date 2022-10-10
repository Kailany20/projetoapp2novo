import 'package:flutter/material.dart';
import 'package:projeto_2/screens/Alerta.dart';

import 'add_tarefas.dart';

class Tarefas extends StatefulWidget {
  const Tarefas({super.key});

  @override
  State<Tarefas> createState() => _TarefasState();
}

class _TarefasState extends State<Tarefas> {
  final _controller = TextEditingController();

  List Tasks = [
    ["Pediatra as 16hrs", false],
    ["Remédio as 19hrs", false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      Tasks[index][1] = !Tasks[index][1];
    });
  }

  void saveNewTask() {
    setState(() {
      Tasks.add([_controller.text, false]);
      _controller.clear();
      Navigator.of(context).pop();
    });
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSalvar: saveNewTask,
          onCancelar: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void deletar(int index) {
    setState(() {
      Tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff59e7af),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFc67c9d),
        title: Text('Tarefas'),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFc67c9d),
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: Tasks.length,
        itemBuilder: (context, index) {
          return Tarefa(
            nomeTarefa: Tasks[index][0],
            tarefafeito: Tasks[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deletar(index),
          );
        },
      ),
    );
  }
}
