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

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var leftImageNumber = 2;

    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
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
