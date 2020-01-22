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

class DicePage extends StatelessWidget {
  var leftDiceNumber=1;
  var rightDiceNumber=2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: FlatButton(child: Image.asset('images/dice$leftDiceNumber.png'), onPressed: () {
            print('dice 1');
          },),),
          Expanded(child: FlatButton(child: Image.asset('images/dice$rightDiceNumber.png'), onPressed: () {
            print('dice 2');
          },)),
        ],
      ),
    );
  }
}
