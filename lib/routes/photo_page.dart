import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  static const nameRoute = '/photo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Photo Page"),
        leading: Container(),
      ),
      body: Center(
        child: Text(
          "PHOTO PAGE",
          style: TextStyle(fontSize: 35),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.keyboard_arrow_left),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
