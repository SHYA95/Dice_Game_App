import 'package:flutter/material.dart';
import 'dart:math' show Random;

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
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left_dice_image = 1;
  int right_dice_image = 1;
  void changefaces() {
    setState(() {
      right_dice_image = Random().nextInt(6) + 1;
      left_dice_image = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              changefaces();
            },
            child: Image.asset('images/dice$right_dice_image.png'),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              changefaces();
            },
            child: Image.asset('images/dice$left_dice_image.png'),
          ),
        ),
      ]),
    );
  }
}
