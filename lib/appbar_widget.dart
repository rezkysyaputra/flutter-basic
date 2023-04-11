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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            color: Colors.amber,
          ),
          leadingWidth: 50,
          title: Container(
            // width: 40,
            height: 40,
            color: Colors.red,
          ),
          // titleSpacing: 0,
          actions: [
            Container(
              width: 50,
              // height: 500,
              color: Colors.green,
            ),
            Container(
              width: 50,
              // height: 500,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            Container(
              width: 50,
              // height: 500,
              color: Color.fromARGB(255, 121, 3, 175),
            ),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(200),
              child: Container(
                width: 50,
                height: 200,
                color: Color.fromARGB(255, 0, 0, 0),
              )),
          // centerTitle: true,
          flexibleSpace: Container(
            width: 50,
            height: 200,
            color: Colors.lime,
          ),
        ),
      ),
    );
  }
}
