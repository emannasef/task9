import 'package:flutter/material.dart';
import 'package:finalproject/Screens/PostScreen.dart';
import 'package:finalproject/Screens/Home.dart';
import 'package:finalproject/Screens/UserScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eman Nasef Task',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: UserScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        PostScreen.id: (context) => PostScreen(),
        UserScreen.id: (context) => UserScreen(),
      },
    );
  }
}
