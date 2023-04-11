import 'package:fist_app/drawer/home.dart';
import 'package:flutter/material.dart';
import 'package:fist_app/drawer/contact.dart';

class about extends StatelessWidget {
  static const nameRoute = '/about';

  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              height: 100,
              color: Colors.blueGrey,
              child: Text(
                "Menu Pilihan",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              alignment: Alignment.bottomLeft,
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(HomePage.nameRoute);
              },
              leading: Icon(
                Icons.home,
                size: 30,
              ),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 25, color: Colors.blueGrey),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(about.nameRoute);
              },
              leading: Icon(
                Icons.abc,
                size: 30,
              ),
              title: Text(
                'About me',
                style: TextStyle(fontSize: 25, color: Colors.blueGrey),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(myContact.nameRoute);
              },
              leading: Icon(
                Icons.contact_phone,
                size: 30,
              ),
              title: Text(
                'Contact',
                style: TextStyle(fontSize: 25, color: Colors.blueGrey),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Page About',
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
