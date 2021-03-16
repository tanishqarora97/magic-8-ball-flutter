import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue,
      body: BallAction(),
    );
  }
}

class BallAction extends StatefulWidget {
  @override
  _BallActionState createState() => _BallActionState();
}

class _BallActionState extends State<BallAction> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
          print('I got clicked');
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
