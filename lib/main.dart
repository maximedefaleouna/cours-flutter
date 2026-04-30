import 'package:cours_dart/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cours Dart'), backgroundColor: Colors.brown),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(color: Colors.red, width: 100, child: Text('One')),
          Container(color: Colors.green, width: 200, child: Text('Two')),
          Container(color: Colors.blue, width: 300, child: Text('Three')),
        ],
      ),
    );
  }
}
