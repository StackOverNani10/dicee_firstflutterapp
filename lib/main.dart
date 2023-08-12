import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int leftDice = 1;
  int rightDice = 1;
  int result = 0;

  void ThrowDice() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
    result = leftDice + rightDice;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tiro de Dados'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  child: Image.asset('assets/images/dice$leftDice.png'),
                  onPressed: () {
                    ThrowDice();
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset('assets/images/dice$rightDice.png'),
                  onPressed: () {
                    ThrowDice();
                  },
                ),
              ),
            ],
          ),
        ),
        
        backgroundColor: Colors.lightBlue[400],
      ),
    );
  }
}
