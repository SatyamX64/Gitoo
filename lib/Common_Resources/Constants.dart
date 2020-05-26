import 'package:flutter/material.dart';

Color kPrimary = Color(0xFF1A252E);
Color kLPrimary = Color(0xFF414d56);
Color kDPrimary = Colors.black;
//Color kSecondary = Color(0xFF1A252E);
//Color kLSecondary = Color(0xFF414d56);
//Color kDSecondary = Colors.black;
Color kSecondary = Color(0xFF243441);
Color kLSecondary = Color(0xFF414d56);
Color kDSecondary = Color(0xFF1A252E);
Color kNeon = Color(0xFF0AFFEF);
Color kTinder = Color(0xFFFF555D);
Color kIconColor = Color(0xFF7C858D);
Color kYellow = Color(0xFFFFAD1F);
Color kGreen = Color(0xFF17BF63);
Color kPurple = Color(0xFF794BC4);
Color kOrange = Color(0xFFF45D22);
Color kInsideFontColor = Colors.white;
Color kInsideHeadingColor = kNeon;
Color kHomeHeadingFont = kNeon;
Color kHomeTextFont = Colors.white;

TextStyle kInsideText = TextStyle(
  color: kInsideFontColor,
  fontWeight: FontWeight.bold,
  fontSize: 15,
);
TextStyle kInsideHeading = TextStyle(
  color: kInsideHeadingColor,
  fontWeight: FontWeight.bold,
  fontSize: 20,
);
TextStyle kHomeText =
    TextStyle(color: kHomeTextFont, fontSize: 25, fontWeight: FontWeight.bold);
TextStyle kHomeHeading = TextStyle(
    color: kHomeHeadingFont, fontWeight: FontWeight.bold, fontSize: 20);
TextStyle kUserNameStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: kTinder,
);
TextStyle kEmailStyle =
    TextStyle(color: kGreen, fontWeight: FontWeight.bold, fontSize: 15);
TextStyle kInfoStyle = TextStyle(
    color: kHomeHeadingFont, fontSize: 20, fontWeight: FontWeight.bold);

Function kBackButton = (BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back,
        color: kNeon,
      ));
};
