import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  MyCard({this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amberAccent,
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(child: Text('$title')),
      ),
      margin: EdgeInsets.all(10.0),
    );
  }
}
