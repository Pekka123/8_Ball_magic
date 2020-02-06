import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int imageNum = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ASk Me Anything",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ask Me Anything"),
        ),
        body: Center(
            child: FlatButton(
          child: Image.asset("assets/ball$imageNum.png"),
          onPressed: () {
            setState(() {
              imageNum = Random().nextInt(5) + 1;
            });
          },
        )),
      ),
    );
  }
}
