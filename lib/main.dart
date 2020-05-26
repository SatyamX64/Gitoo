import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gitoo/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: HomePage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
