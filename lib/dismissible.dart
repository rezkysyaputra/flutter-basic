import 'package:faker/faker.dart';
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
  final Faker faker = Faker();

  static var nameRoute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dismissible")),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: 50,
        itemBuilder: (context, index) {
          return Dismissible(
            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("CONFIRM"),
                    content: Text("Are you sure to delete this chat?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text("Yes"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text("No"),
                      ),
                    ],
                  );
                },
              );
            },
            key: Key(index.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              child: Icon(
                Icons.delete_outline,
                size: 35,
              ),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 15),
            ),
            child: ListTile(
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
              leading: CircleAvatar(
                child: Center(child: Text('${index + 1}')),
              ),
            ),
          );
        },
      ),
    );
  }
}
