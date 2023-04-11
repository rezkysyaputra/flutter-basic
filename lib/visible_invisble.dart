import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // Column, Row dan Stack
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                width: 200,
                height: 100,
                color: Colors.blue,
                child: const Text(
                  'Apa kabar',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'NerkoOne',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(
                  child: Text('Hallo'),
                ),
              ),
            ],
          ),
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Colums',
                style: TextStyle(
                  fontFamily: 'NerkoOne',
                  fontSize: 30,
                ),
              ),
            ),
          )),
    );
  }
}
