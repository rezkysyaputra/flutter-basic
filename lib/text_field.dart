import 'package:fist_app/extract_widget.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Text Field'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              autocorrect: true,
              autofocus: true,
              enableSuggestions: true,
              //copy paste text
              enableInteractiveSelection: true,
              // enabled: false,
              obscureText: true,
              obscuringCharacter: '*',
              keyboardType: TextInputType.phone,
              readOnly: true,
            ),
          ),
        ),
      ),
    );
  }
}
