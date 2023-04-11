import 'package:fist_app/routes/gallery_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = '/homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Page"),
        leading: Container(),
      ),
      body: Center(
        child: Text(
          "HOME PAGE",
          style: TextStyle(fontSize: 35),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(GalleryPage.nameRoute);
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
