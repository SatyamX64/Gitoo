import 'package:flutter/material.dart';
import '../Constants.dart';
import 'NeumorphicBox.dart';

class CategoryButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Function function;
  final int count;
  final bool isPressed;
  CategoryButton(
      {this.count,
      this.title,
      this.icon,
      this.iconColor,
      this.function,
      this.isPressed});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: function,
        child: NeumorphicBox(
          isPressed: isPressed,
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
                    '$count',
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
