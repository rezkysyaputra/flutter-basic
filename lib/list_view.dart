import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  List<Color> myColors = [
    Colors.blue,
    Color.fromARGB(255, 114, 33, 243),
    Color.fromARGB(255, 33, 243, 68),
    Color.fromARGB(255, 243, 33, 33),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text('List view'),
        )),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.black,
            );
          },
          itemCount: myColors.length,
          itemBuilder: ((context, index) {
            return Container(
              width: 300,
              height: 300,
              color: myColors[index],
            );
          }),
        ),
      ),
    );
  }
}
