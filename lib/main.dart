import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            'Dice',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int leftButton = 1;
  int rightButton = 1;
  void changeDice() {
    leftButton = Random().nextInt(6) + 1;
  }

  void changeDice1() {
    rightButton = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeDice();
                });
              },
              child: Image.asset('images/dice$leftButton.png'),
            ),
          ),
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeDice1();
                });
              },
              child: Image.asset('images/dice$rightButton.png'),
            ),
          ),
        ],
      ),
    );
  }
}
