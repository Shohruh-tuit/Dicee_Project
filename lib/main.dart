import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text('Dicee'),
        ),
        body: DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftImageNumber = 2;
  int rightImageNumber = 1;

  void changeDicee() {
    setState(() {
      leftImageNumber = Random().nextInt(6) + 1;
      rightImageNumber = Random().nextInt(6) + 1; //0-5
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDicee();
                print('left button clicked');
              },
              child: Image.asset("images/dice$leftImageNumber.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDicee();
                print('right button clicked');
              },
              child: Image.asset("images/dice$rightImageNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
