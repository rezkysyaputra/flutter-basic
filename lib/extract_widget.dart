import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  // Buka website pub.dev terus cari faker
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Extract Widget'),
        ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return CustomExtractWidget(
              imageUrl: 'https://picsum.photos/id/$index/200/300',
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          },
        ),
      ),
    );
  }
}

class CustomExtractWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  CustomExtractWidget(
      {required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text('10:00 PM'),
    );
  }
}
