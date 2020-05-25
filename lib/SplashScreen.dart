import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'RepoPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final audioPlayer = AudioPlayer(playerId: '001');
  void fun() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return RepoPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    fun();
    return Scaffold(
      backgroundColor: Color(0xFF15202B),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Hero(
                    tag: 'git',
                    child: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
          Expanded(
            child: Container(
                alignment: Alignment.topCenter,
                child: SpinKitChasingDots(
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
