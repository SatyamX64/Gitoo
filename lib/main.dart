import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'WelcomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: WelcomeScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}
