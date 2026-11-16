import 'package:flutter/material.dart';
import 'package:cours_dart/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cours Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.brown,
          primary: Colors.brown[700],
        ),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
