import 'package:flutter/material.dart';
import 'package:gitoo/Constants.dart';

class Organizations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Organizations'),
          backgroundColor: kPrimary,
        ),
        body: Container(
          color: kSecondary,
          alignment: AlignmentDirectional.center,
          child: Text(
            'Bhai ko abhi kahi Kaam nahi mila',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
