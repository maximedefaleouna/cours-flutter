import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cours Dart'),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.brown[200],
            padding: EdgeInsets.all(20),
            child: Text("How I like my coffee"),
          ),
          Container(
            color: Colors.brown[300],
            padding: EdgeInsets.all(20),
            child: Text("coffee prefs"),
          ),
        ],
      ),
    );
  }
}

// a contaier is a widget that allows us to create a box with a specific size, color, and other properties. It can also contain other widgets, making it a versatile building block for our UI. In this example, we have created a container with an orange background color and a text widget that says "Hello Maxime".
// by default if container does not have a size, it will take up as much space as possible. In this case, the container will fill the entire body of the Scaffold, which is the area below the AppBar. The text widget will be centered within the container by default.
// but if there is a child widget inside the container, the container will take the size of the child widget. In this case, the container will take the size of the text widget, which is determined by the length of the text and the font size. The container will then be centered within the body of the Scaffold.
