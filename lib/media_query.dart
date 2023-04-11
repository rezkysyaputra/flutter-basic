import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  // Mengatur tampilan potrait
  // WidgetsFlutterBinding();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.landscapeLeft,
  // ]);
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final MyAppBar = AppBar(centerTitle: true, title: Text('Media Query'));
    final BodyHeight = MediaQueryHeight -
        MyAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: MyAppBar,
      body: Center(
        child: (isLandscape)
            ? Column(children: [
                Container(
                  height: BodyHeight * 0.5,
                  width: MediaQueryWidth,
                  color: Colors.amber,
                ),
                Container(
                    height: BodyHeight * 0.5,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2),
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return GridTile(
                            child: Container(
                          color: Color.fromARGB(
                            255,
                            Random.secure().nextInt(156),
                            Random.secure().nextInt(156),
                            Random.secure().nextInt(156),
                          ),
                        ));
                      },
                    )),
              ])
            : Column(children: [
                Container(
                  height: BodyHeight * 0.3,
                  width: MediaQueryWidth,
                  color: Colors.amber,
                ),
                Container(
                    height: BodyHeight * 0.7,
                    color: Colors.blue,
                    child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(),
                          title: Text("Hello Bang, Ngopi!"),
                        );
                      },
                    )),
              ]),
      ),
    );
  }
}
