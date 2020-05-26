import 'package:flutter/material.dart';
import 'package:gitoo/Common_Resources/Constants.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Text(
        'ABOUT',
        style: kInfoStyle,
      ),
    );
  }
}
