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
      theme: ThemeData(
          //mode tampilan
          // brightness: Brightness.dark,
          // visualDensity: VisualDensity.standard,
          // visualDensity: VisualDensity.compact,
          // visualDensity: VisualDensity.comfortable,
          // visualDensity: VisualDensity(horizontal: 2, vertical: 3),
          primarySwatch: Colors.blueGrey),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Theme')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a Text',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'This is a Text',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Button',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.adb),
      ),
    );
  }
}
