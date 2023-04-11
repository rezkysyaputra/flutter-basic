import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
            title: const Text(
          "MyApps",
        )),
        body: const Center(
          child: Text(
            'Hello World',
            style: TextStyle(
              fontFamily: 'NerkoOne',
              // backgroundColor: Colors.black,
              fontSize: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
