import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text('Cupertino'),
          leading: Icon(Icons.ios_share),
          brightness: Brightness.dark,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Alert Dialog'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Platform.isIOS
                          ? CupertinoAlertDialog(
                              title: Text('Hallo ini Cupertino'),
                              content:
                                  Text('apakah kamu akan menghapus file ini?'),
                              actions: [
                                TextButton(
                                  child: Text('No'),
                                  onPressed: () {},
                                ),
                                TextButton(
                                  child: Text('Yes'),
                                  onPressed: () {},
                                ),
                              ],
                            )
                          : AlertDialog(
                              title: Text('Hallo ini Cupertino'),
                              content:
                                  Text('apakah kamu akan menghapus file ini?'),
                              actions: [
                                TextButton(
                                  child: Text('No'),
                                  onPressed: () {},
                                ),
                                TextButton(
                                  child: Text('Yes'),
                                  onPressed: () {},
                                ),
                              ],
                            );
                    },
                  );
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Platform.isIOS
                        ? showCupertinoModalPopup(
                            context: context,
                            builder: (context) {
                              return Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                color: Colors.white,
                                child: CupertinoDatePicker(
                                  onDateTimeChanged: (dateTime) {
                                    print(dateTime);
                                  },
                                  initialDateTime: DateTime.now(),
                                  mode: CupertinoDatePickerMode.date,
                                ),
                              );
                            },
                          )
                        : showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime.now());
                  },
                  child: Text('Date Picker'))
            ],
          ),
        ));
  }
}
