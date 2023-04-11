import 'package:fist_app/routes/gallery_page.dart';
import 'package:fist_app/routes/home_page.dart';
import 'package:fist_app/routes/photo_page.dart';
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
      home: HomePage(),
      initialRoute: HomePage.nameRoute,
      routes: {
        HomePage.nameRoute: (context) => HomePage(),
        GalleryPage.nameRoute: (context) => GalleryPage(),
        PhotoPage.nameRoute: (context) => PhotoPage(),
      },
    );
  }
}
