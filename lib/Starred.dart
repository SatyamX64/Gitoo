import 'package:flutter/material.dart';
import 'package:gitoo/Constants.dart';

class Starred extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Starred'),
          backgroundColor: kPrimary,
        ),
        body: Container(
          color: kSecondary,
          alignment: AlignmentDirectional.center,
          child: Text(
            'Bhai ko kisi ka kaam acha nahi lagta',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
