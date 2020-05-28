import 'package:flutter/material.dart';
import 'package:gitoo/Common_Resources/Constants.dart';
import 'package:gitoo/Common_Resources/Shared_Widgets.dart';

List<String> followers = [];

class Followers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: InsidePage(
        getList: getList(),
        title: 'Followers',
      ),
    );
  }
}

Widget getList() {
  if (followers.isNotEmpty) {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              '${followers[index]}',
              style: kInsideText.copyWith(fontWeight: FontWeight.normal),
            ),
          );
        },
        separatorBuilder: (BuildContext context, index) {
          return Divider(
            color: kLPrimary,
          );
        },
        itemCount: followers.length);
  } else {
    return Center(
      child: Text(
        'Bhai ko koi Follow nahi karta',
        style: kInsideText,
      ),
    );
  }
}
