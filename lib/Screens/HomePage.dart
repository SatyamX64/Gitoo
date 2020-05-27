import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:gitoo/InsidePages/Organizations.dart';
import 'package:gitoo/Common_Resources/Shared_Widgets.dart';
import 'package:gitoo/InsidePages/Social.dart';
import 'package:gitoo/Network/Network.dart';
import 'package:gitoo/Screens/SplashScreen.dart';
import '../Common_Resources/Constants.dart';
import '../InsidePages/Starred.dart';
import '../InsidePages/Technical.dart';
import 'About.dart';

class HomePage extends StatefulWidget {
  final String username;
  HomePage({this.username});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  NetworkLoader networkLoader;
  @override
  void initState() {
    super.initState();
    networkLoader = NetworkLoader(username: widget.username);
    loadData();
  }

  void loadData() async {
    await networkLoader.getData();
    setState(() {});
    return;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
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
                page: SplashScreen(),
              ),
              title: Visibility(visible: false, child: Text('')),
            ),
            BottomNavigationBarItem(
              icon: BottomBarButton(
                icon: Icons.info,
                page: About(),
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
                    padding: EdgeInsets.only(left: 150, right: 5),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: kPrimary,
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        '$name',
                        style: kUserNameStyle,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                                  '$email',
                                  style: kEmailStyle,
                                ),
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
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return Social();
                                          },
                                        ),
                                      );
                                    },
                                    child: GoodBox(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.group,
                                                  color: kGreen,
                                                  size: 70,
                                                ),
                                                Text(
                                                  'Followers',
                                                  style: kHomeHeading,
                                                ),
                                                Text(
                                                  '${followers.length}',
                                                  style: kHomeText,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            child: VerticalDivider(
                                              color: Color(0xFF7C858D),
                                            ),
                                            height: 70,
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.directions_run,
                                                  color: kGreen,
                                                  size: 70,
                                                ),
                                                Text(
                                                  'Following',
                                                  style: kHomeHeading,
                                                ),
                                                Text(
                                                  '${following.length}',
                                                  style: kHomeText,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return Starred();
                                          },
                                        ),
                                      );
                                    },
                                    child: GoodBox(
                                      child: Column(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: kYellow,
                                            size: 70,
                                          ),
                                          Text(
                                            'Starred',
                                            style: kHomeHeading,
                                          ),
                                          Text(
                                            '${starred.length}',
                                            style: kHomeText,
                                          )
                                        ],
                                      ),
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
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return Technical();
                                          },
                                        ),
                                      );
                                    },
                                    child: GoodBox(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons.pets,
                                                color: kOrange,
                                                size: 70,
                                              ),
                                              Text(
                                                'Repos',
                                                style: kHomeHeading,
                                              ),
                                              Text(
                                                '${repos.length}',
                                                style: kHomeText,
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
                                                Icons.language,
                                                color: kOrange,
                                                size: 70,
                                              ),
                                              Text(
                                                'Languages',
                                                style: kHomeHeading,
                                              ),
                                              Text(
                                                '3',
                                                style: kHomeText,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
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
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return Organizations();
                                              }));
                                            },
                                            child: GoodBox(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  CircleAvatar(
                                                    backgroundImage: NetworkImage(
                                                        'https://avatars0.githubusercontent.com/u/47293749?v=4'),
                                                    radius: 25,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return Organizations();
                                              }));
                                            },
                                            child: GoodBox(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  CircleAvatar(
                                                    backgroundImage: NetworkImage(
                                                        'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/ubuntu/ubuntu.png'),
                                                    radius: 25,
                                                  )
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
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(top: 5),
                            child: GoodBox(
                              child: Text(
                                '$info',
                                style: kInfoStyle,
                                textAlign: TextAlign.center,
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
              top: (MediaQuery.of(context).size.height) / 10,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: kNeon, spreadRadius: 5),
                  ],
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 60,
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
                    style: TextStyle(
                        color: kNeon,
                        fontSize: 50,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
