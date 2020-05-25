//import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:flutter/gestures.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';
//import 'package:gitoo/Shared_Widgets.dart';
//import 'Constants.dart';
//
//class HomePage extends StatefulWidget {
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//
//class _HomePageState extends State<HomePage>
//    with SingleTickerProviderStateMixin {
//  AnimationController controller;
//  Animation animation;
//  @override
//  void initState() {
//    super.initState();
//    controller = AnimationController(
//      vsync: this,
//      duration: Duration(seconds: 3),
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
//        backgroundColor: kRed,
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
//              icon: Icons.person,
//              title: 'User',
//            ),
//            title: Visibility(visible: false, child: Text('')),
//          ),
//        ],
//      ),
//      backgroundColor: kRed,
//      body: Stack(
//        children: <Widget>[
//          Container(
//            width: double.maxFinite,
//            height: controller.value * 6,
//            margin: EdgeInsets.only(top: 200),
//            decoration: BoxDecoration(color: kYellow, boxShadow: [
//              BoxShadow(
//                color: kShadow,
//                offset: Offset(0, -9),
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
//                    color: kShadow,
//                    offset: Offset(3, 6),
//                  ),
//                ],
//                shape: BoxShape.circle,
//              ),
//              child: CircleAvatar(
//                radius: controller.value,
//                backgroundColor: kBlue,
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
//                  color: kWhite,
//                ),
//              ),
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}
