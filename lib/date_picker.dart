import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pageHome(),
    );
  }
}

class pageHome extends StatefulWidget {
  const pageHome({super.key});

  @override
  State<pageHome> createState() => _pageHomeState();
}

class _pageHomeState extends State<pageHome> {
  DateTime selectDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date Picker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                selectDate.toString(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: () {
                  showDatePicker(
                      context: context,
                      initialDate: selectDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2025),
                      selectableDayPredicate: (day) {
                        if ((day).isAfter(
                                DateTime.now().subtract(Duration(days: 2))) &&
                            (day).isBefore(
                                DateTime.now().add(Duration(days: 2)))) {
                          return true;
                        }
                        return false;
                      },
                      builder: (context, child) {
                        return Theme(
                          data: ThemeData.dark(),
                          child: child!,
                        );
                      }).then((value) {
                    print(value);
                    setState(() {
                      selectDate = value!;
                    });
                  });
                },
                child: Text('Date Picker')),
          ],
        ),
      ),
    );
  }
}
