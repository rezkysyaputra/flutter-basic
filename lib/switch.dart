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
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Switch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // Ukuran switch tidak bisa diperbesar
              color: Colors.amber,
              child: Switch(
                activeColor: Colors.amber,
                activeTrackColor: Colors.brown,
                inactiveThumbColor: Colors.green,
                inactiveTrackColor: Colors.red,
                activeThumbImage: AssetImage('images/true.png'),
                inactiveThumbImage: AssetImage('images/false.png'),
                value: isSwitch,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    isSwitch = !isSwitch;
                  });
                },
              ),
            ),
            Text(
              (isSwitch == true ? 'Switch on' : 'Switch off'),
              style: TextStyle(
                fontSize: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
