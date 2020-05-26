import 'package:flutter/material.dart';
import 'package:gitoo/Common_Resources/Constants.dart';

List<String> repos = [];
List<String> languages = [];

class Technical extends StatefulWidget {
  @override
  _TechnicalState createState() => _TechnicalState();
}

class _TechnicalState extends State<Technical> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: kBackButton(context),
            backgroundColor: kPrimary,
            title: Text(
              'Bhai ka Technical Background ',
              style: kInsideHeading,
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Repos',
                ),
                Tab(
                  text: 'languages',
                ),
              ],
            ),
          ),
          body: Container(
            color: kPrimary,
            child: TabBarView(
              children: <Widget>[Repos(), Languages()],
            ),
          ),
        ),
      ),
    );
  }
}

class Repos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (repos.isNotEmpty) {
      return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '${repos[index]}',
                style: kInsideText,
              ));
        },
        separatorBuilder: (BuildContext context, index) {
          return Divider(
            color: kLPrimary,
          );
        },
        itemCount: repos.length,
      );
    } else {
      return Center(
        child: Text(
          'Bhai ne abhi tak kuch nahi banaya hai',
          style: kInsideText,
        ),
      );
    }
  }
}

class Languages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (languages.isNotEmpty) {
      return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '${languages[index]}',
                style: kInsideText,
              ));
        },
        separatorBuilder: (BuildContext context, index) {
          return Divider(
            color: kLPrimary,
          );
        },
        itemCount: languages.length,
      );
    } else {
      return Center(
        child: Text(
          'Bhai abhi learning phase mein hai',
          style: kInsideText,
        ),
      );
    }
  }
}
