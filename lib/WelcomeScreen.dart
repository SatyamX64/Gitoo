import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gitoo/SplashScreen.dart';
import 'HomePage.dart';
import 'Constants.dart';
import 'package:audioplayers/audio_cache.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  AudioCache audioCache = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15202B),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
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
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: ' Enter User Name ',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Color(0xFF1DA1F2),
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Color(0xFF1DA1F2),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: () {
                  audioCache.play('sound5.mp3');
                  FocusScope.of(context).unfocus();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SplashScreen();
                  }));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xFF1DA1F2),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF0e84f2),
                          offset: Offset(6, 6),
                        )
                      ]),
                  child: Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//
//class WelcomeScreen extends StatefulWidget {
//  @override
//  _WelcomeScreenState createState() => _WelcomeScreenState();
//}
//
//class _WelcomeScreenState extends State<WelcomeScreen> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Stack(
//        children: <Widget>[
//          Positioned(
//            child: TextLiquidFill(
//              text: 'GITOO',
//              waveColor: Colors.white,
//              boxBackgroundColor: kRed,
//              textStyle: TextStyle(
//                fontSize: 75.0,
//                fontWeight: FontWeight.bold,
//              ),
//              boxHeight: 200.0,
//            ),
//          ),
//          Container(
//              margin: EdgeInsets.only(top: 200),
//              decoration: BoxDecoration(
//                  color: kYellow,
//                  borderRadius: BorderRadius.only(
//                    topLeft: Radius.circular(90),
//                  ),
//                  boxShadow: [
//                    BoxShadow(
//                      color: kShadow,
//                      offset: Offset(-1, -10),
//                    )
//                  ]),
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                crossAxisAlignment: CrossAxisAlignment.stretch,
//                children: <Widget>[
//                  Container(
//                    alignment: Alignment.center,
//                    child: TypewriterAnimatedTextKit(
//                        speed: Duration(seconds: 1),
//                        onTap: () {
//                          print("Tap Event");
//                        },
//                        text: [
//                          "Enter User Name",
//                        ],
//                        textStyle: TextStyle(
//                          fontSize: 40.0,
//                          color: Colors.black,
//                          fontWeight: FontWeight.w900,
//                        ),
//                        textAlign: TextAlign.start,
//                        alignment: AlignmentDirectional
//                            .topStart // or Alignment.topLeft
//                        ),
//                  ),
//                  Container(
//                    decoration: BoxDecoration(boxShadow: [
//                      BoxShadow(
//                        color: Colors.black54,
//                        blurRadius: 10,
//                        offset: Offset(6, 6),
//                      )
//                    ]),
//                    margin: EdgeInsets.only(
//                        left: 50, right: 50, top: 50, bottom: 30),
//                    child: TextField(
//                      decoration: InputDecoration(
//                        filled: true,
//                        fillColor: kWhite,
//                      ),
//                    ),
//                  ),
//                  GestureDetector(
//                    onTap: () {
//                      Navigator.push(context,
//                          MaterialPageRoute(builder: (context) {
//                        return HomePage();
//                      }));
//                    },
//                    child: Container(
//                      alignment: Alignment.center,
//                      margin:
//                          EdgeInsets.symmetric(horizontal: 70, vertical: 40),
//                      height: 50,
//                      decoration: BoxDecoration(
//                          color: kRed,
//                          borderRadius: BorderRadius.circular(5),
//                          boxShadow: [
//                            BoxShadow(
//                              color: kShadow,
//                              offset: Offset(6, 6),
//                            )
//                          ]),
//                      child: Text(
//                        'Search',
//                        style: TextStyle(
//                          color: kWhite,
//                          fontWeight: FontWeight.w900,
//                          fontSize: 30,
//                        ),
//                      ),
//                    ),
//                  ),
//                  SpinKitWave(
//                    color: kRed,
//                  ),
//                  SizedBox(
//                    height: 10,
//                  ),
//                ],
//              )),
//        ],
//      ),
//    );
//  }
//}
