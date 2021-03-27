import 'package:audioplayers/audio_cache.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gitoo/Constants.dart';
import 'package:gitoo/Network/Network.dart';
import 'package:gitoo/Network/User.dart';
import 'package:provider/provider.dart';
import 'ScreenController.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool _isLoading = false;
  final _audioCache = AudioCache();
  String _animationType = 'idle';
  FocusNode _userFocusNode = FocusNode();
  TextEditingController _userController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _userFocusNode.addListener(() {
      if (_userFocusNode.hasFocus) {
        setState(() {
          _animationType = "test";
        });
      } else {
        setState(() {
          _animationType = "idle";
        });
      }
    });
  }
  
  @override
  void dispose() {
    _userController.dispose();
    _userFocusNode.dispose();
    super.dispose();
  }
  getUserData() async {
    if(_isLoading) return;
    setState(() {
      _isLoading = true;
    });
    final _userId = _userController.text;
    NetworkLoader networkLoader = NetworkLoader(_userId);
    bool isValid = await networkLoader.checkUsername();
    if (isValid) {
      _audioCache.play('happy1.mp3');
      setState(() {
        _animationType = "success";
      });
      final _map = await networkLoader.getUserData();
      final User _user = User(map: _map, userId: _userId);
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(seconds: 3),
          pageBuilder: (_, __, context) {
            return MultiProvider(
              providers: [
                Provider<User>.value(value: _user),
              ],
              child: ScreenController(),
            );
          },
        ),
      );
    } else {
      Fluttertoast.showToast(
          msg: "Something is Wrong :( ",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: kTinder,
          textColor: Colors.white,
          fontSize: 16.0);
      _audioCache.play('sound5.mp3');
      setState(() {
        _isLoading = false;
        _animationType = "fail";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kPrimary,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: size.width * 0.3,
                  backgroundColor: Theme.of(context).accentColor,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _animationType = "idle";
                      });
                    },
                    child: ClipOval(
                      child: FlareActor(
                        'assets/Teddy.flr',
                        animation: _animationType,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                alignment: Alignment.topCenter,
                child: TextField(
                  controller: _userController,
                  focusNode: _userFocusNode,
                  onSubmitted: (_) {
                    getUserData();
                  },
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Balsamiq',
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(size.width * 0.1),
                      borderSide: BorderSide(
                        color: Theme.of(context).accentColor,
                        width: 4,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(size.width * 0.1),
                      borderSide: BorderSide(
                        color: Theme.of(context).accentColor,
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
                padding: EdgeInsets.only(
                    left: size.width * 0.3,
                    right: size.width * 0.3,
                    bottom: size.width * 0.1),
                child: _isLoading
                    ? SpinKitChasingDots(
                        color: Theme.of(context).accentColor,
                      )
                    : GestureDetector(
                        onTap: getUserData,
                        child: Visibility(
                          visible: !_isLoading,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color: Theme.of(context).accentColor,
                                borderRadius:
                                    BorderRadius.circular(size.width * 0.1)),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'Search',
                                style: TextStyle(
                                    color: kPrimary,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Raleway',
                                    fontSize: size.width * 0.08),
                              ),
                            ),
                          ),
                        ),
                      ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Hero(
                  tag: 'gitoo',
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      'Gitoo',
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: size.width * 0.12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
