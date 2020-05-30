import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gitoo/Common_Resources/Shared_Widgets.dart';
import 'package:gitoo/InsidePages/List.dart';
import 'package:gitoo/Network/Network.dart';
import 'package:gitoo/Screens/SplashScreen.dart';
import 'package:marquee/marquee.dart';
import '../Common_Resources/Constants.dart';
import 'About.dart';

Widget selectedList = getFollowers();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  final List screens = [
    Menu(),
    SplashScreen(),
    About(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
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
          body: screens[currentIndex],
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(left: 150, right: 5),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: kPrimary,
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '${name ?? 'Not Available'}',
                    style: kUserNameStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                decoration: BoxDecoration(color: kPrimary),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 10,
                      child: Container(
                        margin: EdgeInsets.only(left: 120, bottom: 10),
                        child: GoodBox(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '${email ?? 'Not Available'}',
                              style: kEmailStyle,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 20,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            SweetBox(
                              count: noOfFollowers,
                              title: 'Followers',
                              icon: MfgLabs.users,
                              iconColor: kGreen,
                              function: () {
                                setState(() {
                                  selectedList = getFollowers();
                                });
                              },
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SweetBox(
                              title: 'Following',
                              count: noOfFollowing,
                              icon: Elusive.group,
                              iconColor: kGreen,
                              function: () {
                                setState(() {
                                  selectedList = getFollowing();
                                });
                              },
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SweetBox(
                              title: 'Starred',
                              count: starred.length,
                              icon: Icons.star,
                              iconColor: kYellow,
                              function: () {
                                setState(() {
                                  selectedList = getStarred();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      flex: 44,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 20,
                              child: GoodBox(
                                child: selectedList,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 9,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    SweetBox(
                                      count: noOfRepos,
                                      title: 'Repos',
                                      iconColor: kOrange,
                                      icon: Elusive.github,
                                      function: () {
                                        setState(() {
                                          selectedList = getRepos();
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    SweetBox(
                                      count: organizations.length,
                                      iconColor: kOrange,
                                      icon: ModernPictograms.money,
                                      function: () {
                                        setState(() {
                                          selectedList = getOrgs();
                                        });
                                      },
                                      title: 'Orgs',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(
                        alignment: Alignment.center,
                        child: Marquee(
                          text: '${info ?? 'Bio Not Available'}',
                          style: kInfoStyle,
                          scrollAxis: Axis.horizontal,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          blankSpace: 20.0,
                          velocity: 100.0,
                          pauseAfterRound: Duration(seconds: 0),
                          startPadding: 10,
                          accelerationDuration: Duration(seconds: 1),
                          accelerationCurve: Curves.linear,
                          decelerationDuration: Duration(milliseconds: 500),
                          decelerationCurve: Curves.easeOut,
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
          top: (MediaQuery.of(context).size.height) / 10,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: kNeon, blurRadius: 15, spreadRadius: 5),
              ],
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: kSecondary,
              backgroundImage: NetworkImage('$avatar'),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 10,
          child: Hero(
            tag: 'gitoo',
            child: Material(
              color: Colors.transparent,
              child: Text(
                'Gitoo',
                style: kGitooTheme,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
