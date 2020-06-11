import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:gitoo/Common_Resources/Constants.dart';
import 'package:gitoo/DataBundle/DataBundle.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimary,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: (MediaQuery.of(context).size.width) / 2 - 95,
                    child: CircleAvatar(
                      radius: 95,
                      backgroundColor: Colors.transparent,
                      child: FlareActor(
                        'assets/Loading.flr',
                        animation: "Alarm",
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: MediaQuery.of(context).size.width / 2 - 60,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: kPrimary,
                        backgroundImage: NetworkImage(user.map['avatar_url']),
                      ),
                    ),
                  ),
                ],
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
                      '${user.map['name']}',
                      style: kUserNameStyle,
                    ),
                    Text(
                      '${user.map['email'] ?? 'Email Not Available'}',
                      style: kEmailStyle,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            '${user.map['bio'] ?? 'Bio Not Available'}',
                            textAlign: TextAlign.center,
                            style: kHomeText.copyWith(fontSize: 15),
                          ),
                        ),
                      ),
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
                            '${user.map['location'] ?? 'Location Not Found'}',
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
                            _launchURL(
                                'https://www.twitter.com/${user.map['twitter']}');
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
                            _launchURL(
                                'https://www.github.com/${user.map['login_id']}');
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
                            _launchURL('https://${user.map['blog']}');
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
                  Share.share('http://www.github.com/${user.map['login_id']}');
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
