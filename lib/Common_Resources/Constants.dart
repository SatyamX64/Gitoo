import 'package:flutter/material.dart';


MaterialColor kPrimarySwatch = MaterialColor(0xFF1A252E, color);


Color kPrimary = Color(0xFF1A252E);
Color kLPrimary = Color(0xFF414d56);
Color kDPrimary = Colors.black;
Color kAccentColor = Color(0xFF0AFFEF);
Color kSecondary = Color(0xFF243441);
Color kDSecondary = Color(0xFF1A252E);

Color kTinder = Color(0xFFFF555D);
Color kIconColor = Color(0xFF7C858D);
Color kYellow = Color(0xFFFFAD1F);
Color kGreen = Color(0xFF17BF63);
Color kPurple = Color(0xFF794BC4);
Color kOrange = Color(0xFFF45D22);
Color kInsideFontColor = Colors.white;
Color kInsideHeadingColor = kAccentColor;
Color kHomeHeadingFont = kAccentColor;
Color kHomeTextFont = Colors.white;

TextStyle kGitooTheme = TextStyle(
    color: kAccentColor,
    fontSize: 50,
    fontWeight: FontWeight.w700,
    fontFamily: 'Raleway');

TextStyle kInsideText = TextStyle(
  color: kInsideFontColor,
  fontWeight: FontWeight.bold,
  fontFamily: 'Balsamiq',
  fontSize: 15,
);
TextStyle kInsideHeading = TextStyle(
  color: kInsideHeadingColor,
  fontWeight: FontWeight.bold,
  fontFamily: 'Balsamiq',
  fontSize: 20,
);
TextStyle kHomeText = TextStyle(
    color: kHomeTextFont,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    fontFamily: 'Balsamiq');
TextStyle kHomeHeading = TextStyle(
    color: kHomeHeadingFont,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    fontFamily: 'Raleway');
TextStyle kUserNameStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: kTinder,
    fontFamily: 'Balsamiq');
TextStyle kEmailStyle = TextStyle(
    color: kGreen,
    fontWeight: FontWeight.bold,
    fontSize: 15,
    fontFamily: 'Balsamiq');
TextStyle kInfoStyle = TextStyle(
    color: kHomeHeadingFont,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'Balsamiq');

Function kBackButton = (BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back,
        color: kAccentColor,
      ));
};

Map<int, Color> color =
{
50:Color.fromRGBO(136,14,79, .1),
100:Color.fromRGBO(136,14,79, .2),
200:Color.fromRGBO(136,14,79, .3),
300:Color.fromRGBO(136,14,79, .4),
400:Color.fromRGBO(136,14,79, .5),
500:Color.fromRGBO(136,14,79, .6),
600:Color.fromRGBO(136,14,79, .7),
700:Color.fromRGBO(136,14,79, .8),
800:Color.fromRGBO(136,14,79, .9),
900:Color.fromRGBO(136,14,79, 1),
};