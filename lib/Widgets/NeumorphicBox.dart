import 'package:flutter/material.dart';

import '../Constants.dart';

class NeumorphicBox extends StatelessWidget {
  final Widget child;
  final bool isPressed;
  NeumorphicBox({this.child, this.isPressed = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kPrimary,
          borderRadius: BorderRadius.circular(20),
          boxShadow: isPressed == true
              ? [
                  BoxShadow(
                    color: kDPrimary,
                    offset: Offset(-4, -4),
                    blurRadius: 6,
                  ),
                  BoxShadow(
                    color: kLPrimary,
                    offset: Offset(1, 1),
                    blurRadius: 10,
                  ),
                ]
              : [
                  BoxShadow(
                    color: kDPrimary,
                    offset: Offset(4, 4),
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    color: kLPrimary,
                    offset: Offset(-2, -2),
                    blurRadius: 6,
                  ),
                ]),
      child: Padding(
        child: child,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
    );
  }
}
