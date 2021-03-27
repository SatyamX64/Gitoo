import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gitoo/Constants.dart';
import 'package:gitoo/DataBundle/DataBundle.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _showToast(String message) {
    Fluttertoast.showToast(
                          msg: message,
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: kTinder,
                          textColor: Colors.white,
                          fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    User user = Provider.of<User>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: (MediaQuery.of(context).size.width) / 2 - size.width*0.22,
                      child: CircleAvatar(
                        radius: size.width*0.22,
                        backgroundColor: Colors.transparent,
                        child: FlareActor(
                          'assets/Loading.flr',
                          animation: "Alarm",
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.width*0.08,
                      left: MediaQuery.of(context).size.width / 2 - size.width*0.14,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: CircleAvatar(
                          radius:  size.width*0.14,
                          backgroundColor: kPrimary,
                          backgroundImage: NetworkImage(user.map['avatar_url']),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '${user.map['name'] ?? 'Not Available'}',
                      style: kUserNameStyle,
                    ),
                    Text(
                      '${user.map['email'] ?? 'Email Not Available'}',
                      style: kEmailStyle,
                    ),
                    
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          width: double.maxFinite,
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: size.width*0.18),
                          child: Text(
                            '${user.map['bio'] ?? '\n\nBio Not Available'}',
                            textAlign: TextAlign.center,
                            style: kHomeText.copyWith(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.pin_drop,
                          color: kTinder,
                          size: 24,
                        ),
                        Text(
                          '${user.map['location'] ?? 'Location Not Found'}',
                          style: kHomeText.copyWith(fontSize: 20),
                        ),
                      ],
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
                            user.map['twitter'] != null ?
                            _launchURL(
                                'https://www.twitter.com/${user.map['twitter']}') : _showToast('No Twitter Handle Added');
                          },
                          child: Icon(
                            Brandico.twitter_bird,
                            color: Colors.blue,
                            size: size.width*0.12,
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            user.map['login_id'] !=null ?
                            _launchURL(
                                'https://www.github.com/${user.map['login_id']}') : _showToast('User Not Found');
                          },
                          child: Icon(
                            Brandico.github_1,
                            color: Colors.white,
                            size: size.width*0.12,
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            user.map['blog'] !=null ?
                            _launchURL('https://${user.map['blog']}') : _showToast('No Blog Added');
                          },
                          child: Icon(
                            Brandico.blogger_rect,
                            color: kOrange,
                            size: size.width*0.12,
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
                  margin: EdgeInsets.symmetric(horizontal: size.width*0.27, vertical: size.width*0.06),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: kTinder,
                    borderRadius: BorderRadius.circular(120),
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


