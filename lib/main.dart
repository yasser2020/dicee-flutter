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
