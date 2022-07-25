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
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 2;
    return Center(
        child: Row(
      children: [
        Expanded(
            child: FlatButton(
          onPressed: () => {
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
