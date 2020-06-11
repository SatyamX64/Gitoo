import 'package:flutter/material.dart';
import 'Constants.dart';

class NavBarButton extends StatelessWidget {
  final IconData icon;
  final bool isPressed;
  NavBarButton({this.icon, this.isPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: kPrimary,
        boxShadow: isPressed == true
            ? [
                BoxShadow(
                    color: kLPrimary, offset: Offset(1, 1), blurRadius: 6),
                BoxShadow(
                    color: kDPrimary, offset: Offset(-4, -4), blurRadius: 10)
              ]
            : [
                BoxShadow(
                    color: kLPrimary, offset: Offset(-4, -4), blurRadius: 10),
                BoxShadow(
                    color: kDPrimary, offset: Offset(2, 2), blurRadius: 10)
              ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        icon,
        color: isPressed == true ? kNeon : kTinder,
        size: 40,
      ),
    );
  }
}
