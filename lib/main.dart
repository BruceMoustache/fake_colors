import 'package:flutter/material.dart';
import 'galery.dart';
import 'logic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'jõao cardoso',
      home: HomeApp(),
    );
  }
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            takePhotoButton(),
            Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
            galeryButton(),
          ]),
      backgroundColor: Logic.appBackgroundColor,
    );
  }

  Widget takePhotoButton() {
    return FlatButton(
        onPressed: () {
          setState(() {
            // TODO usar bloc
            Logic.changeBackgroundColor();
          });
        },
        child: Icon(Icons.format_color_fill),
        color: Colors.white);
  }

  Widget galeryButton() {
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => Galery())
        );
      },
      child: Icon(Icons.color_lens),
      color: Colors.white,
    );
  }
}

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}
