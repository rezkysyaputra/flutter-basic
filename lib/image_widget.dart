import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Widget'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 500,
            color: Colors.blueAccent,
            // Lebih ringkas, bisa pakai asset, network dll.
            child: Image.asset(
              'images/image.jpg',
              fit: BoxFit.cover,
            ),
            // child: Image(
            //   fit: BoxFit.cover,
            //   image: AssetImage('images/image.jpg'),
            //   // image: NetworkImage('https://picsum.photos/200/300'),
            // ),
          ),
        ),
      ),
    );
  }
}
