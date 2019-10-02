import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.red,
        brightness: Brightness.light,
      ),
      home: new Calculator(),
    );
  }
}
