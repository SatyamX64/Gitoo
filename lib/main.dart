import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:gitoo/Common_Resources/Constants.dart';
import 'package:gitoo/Screens/SearchScreen.dart';
import 'package:provider/provider.dart';

import 'DataBundle/DataBundle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // Locks the App to Portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    var systemBarSettings = SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: kPrimary, statusBarColor: kPrimary);
    SystemChrome.setSystemUIOverlayStyle(systemBarSettings);
    return Provider(
      create: (BuildContext context) => DataBundle(),
      child: MaterialApp(
        title: 'Gitoo',
        theme: ThemeData(
          primaryColor: kPrimary,
          primarySwatch: kPrimarySwatch,
          accentColor: kAccentColor,

        ),
        home: SafeArea(child: SearchScreen()),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
