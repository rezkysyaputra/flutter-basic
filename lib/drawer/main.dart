import 'package:fist_app/drawer/about.dart';
import 'package:fist_app/drawer/home.dart';
import 'package:fist_app/drawer/contact.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      initialRoute: HomePage.nameRoute,
      routes: {
        HomePage.nameRoute: (context) => HomePage(),
        myContact.nameRoute: (context) => myContact(),
        about.nameRoute: (context) => about(),
      },
    );
  }
}
