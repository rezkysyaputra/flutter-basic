import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  // const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  final myController = TextEditingController();
  String hasil = "Hasil Inputan";
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Penggunaan Text Field'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  controller: myController,
                  onChanged: (value) {
                    print(value);
                  },
                  onSubmitted: (value) {
                    setState(() {
                      hasil = value;
                    });
                  },
                  onEditingComplete: () {
                    print("Succes");
                  },
                ),
                Text(hasil),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
