import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Widget TextField",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: WidgetsBasicos(),
    );
  }
}
class WidgetsBasicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
appBar: AppBar(
title: Text("Exemplo"),
),
body: Container(
margin: EdgeInsets.only(bottom: 20.0),
child: TextField(
decoration: InputDecoration(
border: OutlineInputBorder(),
hintText: " Digite seu nome completo",
),
),
),
);
  }
}