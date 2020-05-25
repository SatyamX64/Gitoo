import 'package:flutter/material.dart';

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TabBar(
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
    );
  }
}
