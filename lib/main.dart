import 'dart:math';

import 'package:flutter/cupertino.dart';
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
  // const DicePage({Key? key}) : super(key: key);
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 2;
  void chnageDiceFcae() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
            child: FlatButton(
          onPressed: () => {
            chnageDiceFcae(),
          },
          child: Image.asset('images/dice$leftDiceNumber.png'),
        )),
        Expanded(
            child: FlatButton(
          onPressed: () => {
            chnageDiceFcae(),
          },
          child: Image.asset('images/dice$rightDiceNumber.png'),
        )),
      ],
    ));
  }
}
