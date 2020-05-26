import 'package:flutter/material.dart';
import 'package:gitoo/Constants.dart';

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
            backgroundColor: kPrimary,
            title: Text('Bhai ka Technical Background '),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Repos',
                ),
                Tab(
                  text: 'Languages',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[One(), Two()],
          ),
        ),
      ),
    );
  }
}

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: kSecondary,
      child: Text(
        'Bhai ne abhi tak kuch nahi banaya hai',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class Two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondary,
      alignment: Alignment.center,
      child: Text(
        'Bhai abhi learning phase mein hai',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
