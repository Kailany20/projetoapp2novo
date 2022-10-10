import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Tarefa extends StatelessWidget {
  final String nomeTarefa;
  final bool tarefafeito;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  Tarefa({
    super.key,
    required this.nomeTarefa,
    required this.tarefafeito,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              Checkbox(
                value: tarefafeito,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),
              Text(
                nomeTarefa,
                style: TextStyle(
                  decoration: tarefafeito
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 219, 145, 178),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
