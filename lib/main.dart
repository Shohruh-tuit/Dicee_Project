import 'dart:ui';

import 'package:flutter/material.dart';

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
  var leftImageNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftImageNumber++;
                  if(leftImageNumber == 7){
                    leftImageNumber = 1;
                  }
                });
                print('left button clicked');
              },
              child: Image.asset("images/dice$leftImageNumber.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('right button clicked');
              },
              child: Image.asset("images/dice1.png"),
            ),
          ),
        ],
      ),
    );
  }
}

