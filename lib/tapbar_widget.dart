import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      icon: Icon(Icons.account_circle_outlined),
      text: 'Profil',
    ),
    Tab(
      icon: Icon(Icons.add_call),
      text: 'Call',
    ),
    Tab(
      icon: Icon(Icons.add_a_photo_sharp),
      text: 'Picture',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        //ketika aplikasi pertama dibuka tabnya berada di indez 1(call)
        initialIndex: 1,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 40, 99, 2),
            centerTitle: true,
            title: Text('TapBar Widget'),
            bottom: TabBar(
              labelColor: Colors.yellowAccent,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              // Tab barnya bisa dicustom
              //indicator dan lain lain
              // indicator: ,
              indicatorColor: Colors.yellowAccent,
              tabs: myTab,
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: Text(
                'Profil',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Center(
              child: Text(
                'Call',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Center(
              child: Text(
                'Picture',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
