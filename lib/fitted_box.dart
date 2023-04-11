import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fitted Box')),
      body: Center(
        child: Container(
          width: 300,
          height: 100,
          color: Colors.red,
          child: FittedBox(
            alignment: Alignment.centerRight,
            // fit: BoxFit.fill,
            child: Image.network('https://picsum.photos/500/500'),
          ),
        ),
      ),
    );
  }
}
