import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gitoo/Screens/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: SplashScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}
