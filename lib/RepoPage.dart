import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gitoo/Shared_Widgets.dart';
import 'Constants.dart';

void getTheme() {}

class RepoPage extends StatefulWidget {
  @override
  _RepoPageState createState() => _RepoPageState();
}

class _RepoPageState extends State<RepoPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF243441),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          backgroundColor: kPrimary,
          items: [
            BottomNavigationBarItem(
              icon: BottomBarButton(
                icon: Icons.home,
              ),
              title: Visibility(
                visible: false,
                child: Text(' '),
              ),
            ),
            BottomNavigationBarItem(
              icon: BottomBarButton(
                icon: Icons.graphic_eq,
              ),
              title: Visibility(visible: false, child: Text('')),
            ),
            BottomNavigationBarItem(
              icon: BottomBarButton(
                icon: Icons.info,
              ),
              title: Visibility(visible: false, child: Text('')),
            ),
          ],
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: kPrimary,
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'SatyamX64',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: kTinder,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(color: kSecondary),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 150,
                              bottom: 15,
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFF243441),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(-2, -2),
                                    blurRadius: 5,
                                    color: Color(0xFF414d56),
                                  ),
                                  BoxShadow(
                                    offset: Offset(4, 4),
                                    color: Color(0xFF1A252E),
                                    blurRadius: 10,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15)),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'Following',
                                style: TextStyle(
                                    color: kTinder,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: GoodBox(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: <Widget>[
                                            Icon(
                                              Icons.person,
                                              color: kIconColor,
                                              size: 70,
                                            ),
                                            Text(
                                              'Followers',
                                              style: TextStyle(
                                                  color: kIconColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            Text(
                                              '54',
                                              style: TextStyle(
                                                  color: kIconColor,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          child: VerticalDivider(
                                            color: Color(0xFF7C858D),
                                          ),
                                          height: 70,
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.marsStrokeV,
                                              color: kIconColor,
                                              size: 70,
                                            ),
                                            Text(
                                              'Following',
                                              style: TextStyle(
                                                  color: kIconColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            Text(
                                              '32',
                                              style: TextStyle(
                                                  color: kIconColor,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: GoodBox(
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.whatshot,
                                          color: kIconColor,
                                          size: 70,
                                        ),
                                        Text(
                                          'Repos',
                                          style: TextStyle(
                                              color: kIconColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          '54',
                                          style: TextStyle(
                                              color: kIconColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: GoodBox(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: <Widget>[
                                            Icon(
                                              Icons.person,
                                              color: kIconColor,
                                              size: 70,
                                            ),
                                            Text(
                                              'Followers',
                                              style: TextStyle(
                                                  color: kIconColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            Text(
                                              '54',
                                              style: TextStyle(
                                                  color: kIconColor,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          child: VerticalDivider(
                                            color: Color(0xFF7C858D),
                                          ),
                                          height: 70,
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.marsStrokeV,
                                              color: kIconColor,
                                              size: 70,
                                            ),
                                            Text(
                                              'Following',
                                              style: TextStyle(
                                                  color: kIconColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            Text(
                                              '32',
                                              style: TextStyle(
                                                  color: kIconColor,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: <Widget>[
                                        Expanded(
                                          child: GoodBox(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.whatshot,
                                                  color: kIconColor,
                                                  size: 50,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Expanded(
                                          child: GoodBox(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.whatshot,
                                                  color: kIconColor,
                                                  size: 50,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
                            child: GoodBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'DSC||COMPETITIVE CODER||DEMO',
                                      style: TextStyle(
                                          color: kIconColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: (MediaQuery.of(context).size.height) / 8,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: kNeon,
                      blurRadius: 5,
                    ),
                  ],
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: NetworkImage(
                      'https://avatars0.githubusercontent.com/u/62766656?v=4'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//import 'package:flutter/gestures.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';
//import 'package:gitoo/Shared_Widgets.dart';
//
//import 'Constants.dart';
//
//Color kBlack = Color(0xFF000000);
//Color kDimBlack = Color(0xFF15202B);
//Color kBBColor = Color(0xFF010c16);
//Color kNBlack = Color(0xFF080d11);
////Color kWhite = Color(0xFFFFFFFF);
////Color kShadow = Color(0xFFA80030);
////Color kBlue = Color(0xFF06637F);
////Color kLShadow = Color(0xFFe00846);
////Color kDirtyYellow = Color(0xFFdbb11c);
//
//class RepoPage extends StatefulWidget {
//  @override
//  _RepoPageState createState() => _RepoPageState();
//}
//
//class _RepoPageState extends State<RepoPage>
//    with SingleTickerProviderStateMixin {
//  AnimationController controller;
//  @override
//  void initState() {
//    super.initState();
//    controller = AnimationController(
//      vsync: this,
//      duration: Duration(seconds: 1),
//      upperBound: 80,
//    );
//    controller.forward();
//    controller.addListener(() {
//      setState(() {});
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      bottomNavigationBar: BottomNavigationBar(
//        type: BottomNavigationBarType.fixed,
//        currentIndex: 0,
//        backgroundColor: Color(0xFFE0E5EC),
//        items: [
//          BottomNavigationBarItem(
//            icon: BottomBarButton(
//              icon: Icons.home,
//              title: 'Home',
//            ),
//            title: Visibility(visible: false, child: Text('')),
//          ),
//          BottomNavigationBarItem(
//            icon: BottomBarButton(
//              icon: Icons.graphic_eq,
//              title: 'Analytics',
//            ),
//            title: Visibility(visible: false, child: Text('')),
//          ),
//          BottomNavigationBarItem(
//            icon: BottomBarButton(
//              icon: Icons.info,
//              title: 'Rating',
//            ),
//            title: Visibility(visible: false, child: Text('')),
//          ),
//        ],
//      ),
//      backgroundColor: Color(0xFFE0E5EC),
//      body: Stack(
//        children: <Widget>[
//          Container(
//            width: double.maxFinite,
//            height: double.maxFinite,
//            margin: EdgeInsets.only(top: 200),
//            decoration: BoxDecoration(color: Color(0xFFE0E5EC), boxShadow: [
//              BoxShadow(
//                color: Color(0xFFFFFFFF),
//                blurRadius: 10,
//                offset: Offset(0, -5),
//              ),
//            ]),
//          ),
//          Positioned(
//            top: 100,
//            left: 20,
//            child: Container(
//              decoration: BoxDecoration(
//                boxShadow: [
//                  BoxShadow(
//                    color: Color(0xFFFFFFFF),
//                    offset: Offset(3, 6),
//                    blurRadius: 10,
//                  ),
//                ],
//                shape: BoxShape.circle,
//              ),
//              child: CircleAvatar(
//                radius: controller.value,
//                backgroundColor: Colors.blueGrey,
//                backgroundImage: NetworkImage(
//                    'https://avatars0.githubusercontent.com/u/62766656?v=4'),
//              ),
//            ),
//          ),
//          Positioned(
//            left: 190,
//            top: 150,
//            child: Container(
//              child: Text(
//                'SatyamX64',
//                style: TextStyle(
//                  fontSize: 30,
//                  fontWeight: FontWeight.bold,
//                  color: kNBlack.withOpacity(0.8),
//                ),
//              ),
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}
