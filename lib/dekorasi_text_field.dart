import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dekorasi Text Field'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              obscureText: _obsecureText,
              autocorrect: false,
              // Cursor
              showCursor: true,
              cursorColor: Colors.black,
              // cursorWidth: 10,
              // cursorHeight: 30,
              // cursorRadius: Radius.circular(20),
              //
              // Text
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.characters,
              // TextStyle
              style: TextStyle(fontSize: 18),

              //Decoration
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obsecureText = !_obsecureText;
                      });
                    },
                    icon: Icon(_obsecureText
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                  prefixIcon: Icon(Icons.person),
                  // prefixText: 'Name: ',
                  hintText: 'Please input your name..',
                  labelText: 'Full Name',
                  labelStyle: TextStyle(color: Colors.black)),
            ),
          ),
        ),
      ),
    );
  }
}
