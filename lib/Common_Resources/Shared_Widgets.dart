import 'package:flutter/material.dart';
import 'Constants.dart';

class BottomBarButton extends StatelessWidget {
  final IconData icon;
  final Widget page;
  BottomBarButton({this.icon, this.page});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: Duration(seconds: 2),
                pageBuilder: (_, __, context) {
                  return page;
                }));
      },
      child: Container(
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
          color: kPrimary,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
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
