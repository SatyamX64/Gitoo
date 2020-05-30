import 'package:audioplayers/audio_cache.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gitoo/Common_Resources/Constants.dart';
import 'package:gitoo/Network/Network.dart';
import 'HomePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool loading = false;
  bool isFocus = false;
  final audioCache = AudioCache();
  String animationType = 'idle';
  FocusNode userFocusNode = FocusNode();
  TextEditingController userController = TextEditingController();
  @override
  void initState() {
    super.initState();
    userFocusNode.addListener(() {
      if (userFocusNode.hasFocus) {
        setState(() {
          isFocus = true;
          animationType = "test";
        });
      } else {
        setState(() {
          isFocus = false;
          animationType = "idle";
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kPrimary,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                color: kPrimary,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: CircleAvatar(
                    radius: 120,
                    backgroundColor: kNeon,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          animationType = "idle";
                        });
                      },
                      child: ClipOval(
                        child: FlareActor(
                          'assets/Teddy.flr',
                          animation: animationType,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.topCenter,
                color: kPrimary,
                child: TextField(
                  controller: userController,
                  focusNode: userFocusNode,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Balsamiq',
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: kNeon,
                        width: 4,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: kNeon,
                        width: 4,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(left: 80, right: 80, bottom: 30),
                color: kPrimary,
                child: GestureDetector(
                  onTap: () async {
                    setState(() {
                      loading = true;
                    });
                    NetworkLoader networkLoader =
                        NetworkLoader(username: userController.text);
                    bool isValid = await networkLoader.checkUsername();
                    if (isValid) {
                      audioCache.play('happy1.mp3');
                      setState(() {
                        animationType = "success";
                      });
                      await networkLoader.getData();
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 10),
                              pageBuilder: (_, __, context) {
                                return HomePage();
                              }));
                    } else {
                      audioCache.play('sound5.mp3');
                      setState(() {
                        loading = false;
                        animationType = "fail";
                      });
                    }
                  },
                  child: Visibility(
                    visible: !loading,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: kNeon,
                          borderRadius: BorderRadius.circular(30)),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Search',
                          style: TextStyle(
                              color: kPrimary,
                              fontWeight: FontWeight.w900,
                              fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: loading,
              child: Expanded(
                child: SpinKitChasingDots(
                  color: kNeon,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: kPrimary,
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
            ),
          ],
        ));
  }
}
