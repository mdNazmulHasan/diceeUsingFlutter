import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}


class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=2;

  void changeDice(){
    leftDiceNumber=Random().nextInt(5)+1;
    rightDiceNumber=Random().nextInt(5)+1;
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: FlatButton(child: Image.asset('images/dice$leftDiceNumber.png'), onPressed: () {
            setState(() {
changeDice();
            });
          },),),
          Expanded(child: FlatButton(child: Image.asset('images/dice$rightDiceNumber.png'), onPressed: () {
            setState(() {
changeDice();

            });
          },)),
        ],
      ),
    );
  }
}

