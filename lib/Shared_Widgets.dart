import 'package:flutter/material.dart';
import 'package:gitoo/RepoPage.dart';
import 'Constants.dart';

class BottomBarButton extends StatelessWidget {
  final IconData icon;
  BottomBarButton({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: kPrimary,
        boxShadow: [
          BoxShadow(color: kLPrimary, offset: Offset(-2, -2), blurRadius: 8),
          BoxShadow(color: kDPrimary, offset: Offset(4, 4), blurRadius: 10)
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        icon,
        color: kNeon,
        size: 40,
      ),
    );
  }
}

class GoodBox extends StatelessWidget {
  final Widget child;
  GoodBox({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kSecondary,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: kDPrimary,
              offset: Offset(9, 9),
              blurRadius: 6,
            ),
            BoxShadow(
              color: kLSecondary,
              offset: Offset(-2, -2),
              blurRadius: 3,
            ),
          ]),
      child: Padding(
        child: child,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
    );
  }
}
