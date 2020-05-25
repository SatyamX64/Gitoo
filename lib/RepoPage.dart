import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gitoo/Shared_Widgets.dart';
import 'Constants.dart';

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
                                borderRadius: BorderRadius.circular(2)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  'sgshubham98@github.com.io',
                                  style: TextStyle(
                                      color: kGreen,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
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
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                '54',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                '32',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
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
                                          Icons.star,
                                          color: kYellow,
                                          size: 70,
                                        ),
                                        Text(
                                          'Starred',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          '54',
                                          style: TextStyle(
                                              color: Colors.white,
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
                                              Icons.pets,
                                              color: kOrange,
                                              size: 70,
                                            ),
                                            Text(
                                              'Repos',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            Text(
                                              '540',
                                              style: TextStyle(
                                                  color: Colors.white,
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
                                              Icons.language,
                                              color: kOrange,
                                              size: 70,
                                            ),
                                            Text(
                                              'Languages',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            Text(
                                              '3',
                                              style: TextStyle(
                                                  color: Colors.white,
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
                                                CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      'https://avatars0.githubusercontent.com/u/47293749?v=4'),
                                                  radius: 25,
                                                )
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
                                                CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/ubuntu/ubuntu.png'),
                                                  radius: 25,
                                                )
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
                                          color: Colors.white,
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
