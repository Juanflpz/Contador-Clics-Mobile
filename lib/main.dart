import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counters/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

/*
*todos los stateless requieren de la implementacion de su build
*/
class MyApp extends StatelessWidget {
  const MyApp({super.key}); //llave para el stateless widget con CTRL . en MyAPP

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //para quitar el banner de debug
      theme: ThemeData(
        useMaterial3: true,
        //colorSchemeSeed: Colors.amber
      ),
      home: const CounterScreen() //el child siempre es la última propiedad a definir
    );
  }
}
