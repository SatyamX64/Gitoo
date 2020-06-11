import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:gitoo/Common_Resources/Constants.dart';
import 'package:gitoo/DataNotifier/DataNotifier.dart';
import 'package:gitoo/Screens/SearchScreen.dart';
import 'package:provider/provider.dart';

import 'DataBundle/DataBundle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    var myNavBar = SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: kPrimary, statusBarColor: kDPrimary);
    SystemChrome.setSystemUIOverlayStyle(myNavBar);
    return Provider(
      create: (BuildContext context) => DataBundle(),
      child: MaterialApp(
        title: 'Gitoo',
        home: SafeArea(child: SearchScreen()),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
