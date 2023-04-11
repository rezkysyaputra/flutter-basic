import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Tile'),
        ),
        body: ListView(children: [
          ListTile(
            contentPadding: EdgeInsets.only(top: 10),
            title: Text('Muh. Rezky Syaputra'),
            subtitle: Text(
              'This is Subittle cnuscn ws suihwfuwbscsjndibasbcabcysabcs8ufwofsdcsbcsiucssfbwwfugwfcs  sgf8sdusscswrywutwe eywudw',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            leading: CircleAvatar(),
            trailing: Text('12:00 AM'),
            // dense: true,
            // tileColor: Colors.greenAccent,
            // onTap: () {
            //   return =;
            // },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('Muh. Rezky Syaputra'),
            subtitle: Text('This is Subtittle'),
            leading: CircleAvatar(),
            trailing: Text('12:00 AM'),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('Muh. Rezky Syaputra'),
            subtitle: Text('This is Subtittle'),
            leading: CircleAvatar(),
            trailing: Text('12:00 AM'),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('Muh. Rezky Syaputra'),
            subtitle: Text('This is Subtittle'),
            leading: CircleAvatar(),
            trailing: Text('12:00 AM'),
          ),
          Divider(
            color: Colors.black,
          ),
        ]),
      ),
    );
  }
}
