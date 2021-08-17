import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final int counter2;
  Screen2({this.counter2 = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '$counter2',
          style: TextStyle(fontSize: 50.0, color: Colors.red),
        ),
      ),
    );
  }
}
