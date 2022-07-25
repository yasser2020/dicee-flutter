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
  var leftDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
            child: FlatButton(
          onPressed: () => {
            leftDiceNumber = 2,
            print("Hi Yasser")
          },
          child: Image.asset('images/dice$leftDiceNumber.png'),
        )),
        Expanded(
            child: FlatButton(
          onPressed: () => {},
          child: Image.asset('images/dice2.png'),
        )),
      ],
    ));
  }
}
