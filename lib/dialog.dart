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
      home: myHome(),
    );
  }
}

class myHome extends StatefulWidget {
  const myHome({
    super.key,
  });

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  String data = "Belum Ada Data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dialog"),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("klik");
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("CONFIRM"),
                content: Text("Are you sure to delete this item?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        data = "True";
                      });
                      Navigator.of(context)
                          .pop("You are have delete this item");
                    },
                    child: Text("Yes"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        data = "False";
                      });
                      Navigator.of(context).pop("you do not delete this item");
                    },
                    child: Text("No"),
                  ),
                ],
              );
            },
          ).then((value) => print(value));
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
