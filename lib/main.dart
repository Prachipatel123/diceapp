import 'dart:math';

import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice Game'),
        ),
        backgroundColor: Colors.grey.shade200,
        body: DiceApp(),
      ),
    )
  );
}


class DiceApp extends StatefulWidget {

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: (){
                  setState(() {
                    leftDiceNum = Random().nextInt(6)+1;
                    rightDiceNum = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice${leftDiceNum}R.png')
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: (){
                  setState(() {
                    rightDiceNum = Random().nextInt(6)+1;
                    leftDiceNum = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice${rightDiceNum}R.png')
            ),
          ),
        ],
      ),
    );
  }
}


