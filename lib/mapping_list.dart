import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  // Teknik Mapping
  final List<Map<String, dynamic>> myList = [
    {
      "name": "Zaky",
      "age": 19,
      "favColor": [
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown"
      ]
    },
    {
      "name": "Asep",
      "age": 22,
      "favColor": ["Yellow", "Pink", "Green"]
    },
    {
      "name": "Zaky",
      "age": 19,
      "favColor": [
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown"
      ]
    },
    {
      "name": "Asep",
      "age": 22,
      "favColor": ["Yellow", "Pink", "Green"]
    },
    {
      "name": "Zaky",
      "age": 19,
      "favColor": [
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown"
      ]
    },
    {
      "name": "Asep",
      "age": 22,
      "favColor": ["Yellow", "Pink", "Green"]
    },
    {
      "name": "Zaky",
      "age": 19,
      "favColor": [
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown"
      ]
    },
    {
      "name": "Asep",
      "age": 22,
      "favColor": ["Yellow", "Pink", "Green"]
    },
    {
      "name": "Zaky",
      "age": 19,
      "favColor": [
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown"
      ]
    },
    {
      "name": "Asep",
      "age": 22,
      "favColor": ["Yellow", "Pink", "Green"]
    },
    {
      "name": "Zaky",
      "age": 19,
      "favColor": [
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown",
        "White",
        "Black",
        "Brown"
      ]
    },
    {
      "name": "Asep",
      "age": 22,
      "favColor": ["Yellow", "Pink", "Green"]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID APPS"),
        ),
        body: ListView(
          children: myList.map((data) {
            List myfavColor = data["favColor"];
            return Card(
              shadowColor: Color.fromARGB(255, 236, 0, 0).withOpacity(1),
              margin: EdgeInsets.all(20),
              color: Colors.blueAccent.withOpacity(0.1),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "name : ${data['name']}",
                              style: TextStyle(
                                  fontFamily: 'SecularOne',
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                            Text(
                              "age : ${data['age']}",
                              style: TextStyle(
                                  fontFamily: 'SecularOne',
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    ),
                    // favColor
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myfavColor.map((color) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 5,
                            ),
                            color: Colors.lightBlue,
                            padding: EdgeInsets.all(8),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
