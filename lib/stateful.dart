import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myApp();
}

class _myApp extends State<myApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Apps'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 50 + double.parse(counter.toString()),
                fontFamily: 'SecularOne',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (counter != 1) {
                        setState(() {
                          counter--;
                        });
                      }
                      // print(counter);
                    },
                    child: Icon(
                      Icons.remove,
                    )),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                      // print(counter);
                    },
                    child: Icon(
                      Icons.add,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
