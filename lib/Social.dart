import 'package:flutter/material.dart';
import 'package:gitoo/Constants.dart';

List<String> followers = [];
List<String> following = [];

class Social extends StatefulWidget {
  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimary,
            title: Text('Bhai ka Social Circle '),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Followers',
                ),
                Tab(
                  text: 'Following',
                ),
              ],
            ),
          ),
          body: Container(
            color: kPrimary,
            child: TabBarView(
              children: <Widget>[Followers(), Following()],
            ),
          ),
        ),
      ),
    );
  }
}

class Followers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (followers.isNotEmpty) {
      return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '${followers[index]}',
                style: kGeneralText,
              ));
        },
        separatorBuilder: (BuildContext context, index) {
          return Divider(
            color: kLPrimary,
          );
        },
        itemCount: followers.length,
      );
    } else {
      return Center(
        child: Text(
          'Bhai ko koi Follow Nahi karta',
          style: kGeneralText,
        ),
      );
    }
  }
}

class Following extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (following.isNotEmpty) {
      return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '${following[index]}',
                style: kGeneralText,
              ));
        },
        separatorBuilder: (BuildContext context, index) {
          return Divider(
            color: kLPrimary,
          );
        },
        itemCount: following.length,
      );
    } else {
      return Center(
        child: Text(
          'Bhai bhi kisi ko Follow Nahi karta',
          style: kGeneralText,
        ),
      );
    }
  }
}
