import 'package:fist_app/routes/photo_page.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  static const nameRoute = '/gallery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Gallery Page"),
        leading: Container(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Gallery Page",
              style: TextStyle(fontSize: 35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "<< Back",
                      style: TextStyle(fontSize: 25),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(PhotoPage.nameRoute);
                    },
                    child: Text(
                      "Next >>",
                      style: TextStyle(fontSize: 25),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
