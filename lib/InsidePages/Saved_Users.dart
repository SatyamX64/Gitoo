import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gitoo/Common_Resources/Constants.dart';

class SavedUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(' '),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              color: kPrimary,
              child: FlareActor(
                'assets/Coding.flr',
                alignment: Alignment.center,
                animation: "coding",
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Text('Under Construction',
                  style: TextStyle(
                    color: kNeon,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
