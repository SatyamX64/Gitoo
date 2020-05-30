import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:gitoo/Common_Resources/Constants.dart';
import 'package:gitoo/Network/Network.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimary,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(color: kNeon, spreadRadius: 5, blurRadius: 3),
                ]),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(avatar),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '$name',
                      style: kUserNameStyle,
                    ),
                    Text(
                      '${email ?? 'Email Not Available'}',
                      style: kEmailStyle,
                    ),
                    Text(
                      '${info ?? 'Bio Not Available'}',
                      textAlign: TextAlign.center,
                      style: kHomeText.copyWith(fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.pin_drop,
                            color: kTinder,
                            size: 23,
                          ),
                          Text(
                            '${location ?? 'Location Not Found'}',
                            style: kHomeText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _launchURL('https://www.twitter.com/$twitter');
                          },
                          child: Icon(
                            Brandico.twitter_bird,
                            color: Colors.blue,
                            size: 50,
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _launchURL('https://www.github.com/$userId');
                          },
                          child: Icon(
                            Brandico.github_1,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            print('$blogger');
                            _launchURL('$blogger');
                          },
                          child: Icon(
                            Brandico.blogger_rect,
                            color: kOrange,
                            size: 50,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Share.share('http://www.github.com/$userId');
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 100, vertical: 25),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: kTinder,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Share',
                    style: kHomeText,
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

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
