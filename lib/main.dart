import 'package:flutter/material.dart';
import '../Atm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(Object context) {
    return MaterialApp(
      home: Atm(),
    );
  }
}
