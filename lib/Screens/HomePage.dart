import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/maki_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:gitoo/InsidePages/Organizations.dart';
import 'package:gitoo/Common_Resources/Shared_Widgets.dart';
import 'package:gitoo/InsidePages/Following.dart';
import 'package:gitoo/InsidePages/Followers.dart';
import 'package:gitoo/InsidePages/Saved_Users.dart';
import 'package:gitoo/Network/Network.dart';
import 'package:gitoo/Screens/SplashScreen.dart';
import 'package:marquee/marquee.dart';
import '../Common_Resources/Constants.dart';
import '../InsidePages/Starred.dart';
import 'package:gitoo/InsidePages/Repos.dart';
import 'About.dart';

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
    return SafeArea(
      child: Scaffold(
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
                      flex: 4,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            SweetBox(
                              data: followers,
                              title: 'Followers',
                              icon: MfgLabs.users,
                              iconColor: kGreen,
                              page: Followers(),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SweetBox(
                              data: following,
                              title: 'Following',
                              icon: Elusive.group,
                              iconColor: kGreen,
                              page: Following(),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SweetBox(
                              data: starred,
                              title: 'Starred',
                              icon: Icons.star,
                              iconColor: kYellow,
                              page: Starred(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            SweetBox(
                              flex: 2,
                              title: 'Repos',
                              iconColor: kYellow,
                              icon: RpgAwesome.player_pyromaniac,
                              data: repos,
                              page: Repos(),
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
                                    SweetBox(
                                      title: 'Orgs',
                                      iconColor: kTinder,
                                      icon: Elusive.heart,
                                      page: SavedUsers(),
                                      data: organizations,
                                      vNumber: false,
                                      vTitle: false,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    SweetBox(
                                      iconColor: kTinder,
                                      icon: Maki.town_hall,
                                      page: Organizations(),
                                      data: organizations,
                                      vTitle: false,
                                      vNumber: false,
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
                      height: 15,
                    ),
                    Expanded(
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
              backgroundImage: NetworkImage(
                  '${avatar ?? 'https://www.punjabigram.com/pg/ajay_devgan/ajay_devgan_wearing_black_goggle.jpg'}'),
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
