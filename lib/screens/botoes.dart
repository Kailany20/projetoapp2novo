import 'package:flutter/material.dart';

class Botoes extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  Botoes({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Color(0xff59e7af),
      child: Text(text),
    );
  }
}
