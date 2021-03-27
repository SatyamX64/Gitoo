import 'package:flutter/material.dart';
import '../Constants.dart';

class BottomBarButton extends StatelessWidget {
  final IconData icon;
  final bool isPressed;
  BottomBarButton({this.icon, this.isPressed});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 5),
      width: size.width*0.20,
      height: size.width*0.20,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
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
        color: isPressed == true ? kAccentColor : kTinder,
        size: size.width*0.12,
      ),
    );
  }
}
