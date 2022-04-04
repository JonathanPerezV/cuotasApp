import 'package:aplicacion_calculadora/pages/calculadora.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora',
      routes: {
        'calculadora': (_) => Calculadora(),
      },
      initialRoute: 'calculadora',
    );
  }
}
