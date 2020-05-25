import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gitoo/HomePage.dart';
import 'Constants.dart';
import 'RepoPage.dart';
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
