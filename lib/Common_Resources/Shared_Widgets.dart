import 'package:flutter/material.dart';
import 'Constants.dart';
import 'package:gitoo/Screens/HomePage.dart';

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

class SweetBox extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Function function;
  final int flex;
  final List data;
  SweetBox(
      {this.data,
      this.title,
      this.icon,
      this.iconColor,
      this.function,
      this.flex = 1});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: GestureDetector(
        onTap: function,
        child: GoodBox(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Icon(
                    icon,
                    color: iconColor,
                  ),
                ),
              ),
              Expanded(
                child: FittedBox(
                  child: Text(
                    '$title',
                    style: kHomeHeading,
                  ),
                ),
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '${data.length}',
                    style: kHomeText,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
