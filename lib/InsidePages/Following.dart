import 'package:flutter/material.dart';
import 'package:gitoo/Common_Resources/Constants.dart';
import 'package:gitoo/Common_Resources/Shared_Widgets.dart';

List<String> following = [];

class Following extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InsidePage(
      getList: getList(),
      title: 'Following',
    );
  }
}

Widget getList() {
  if (following.isNotEmpty) {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              '${following[index]}',
              style: kInsideText.copyWith(fontWeight: FontWeight.normal),
            ),
          );
        },
        separatorBuilder: (BuildContext context, index) {
          return Divider(
            color: kLPrimary,
          );
        },
        itemCount: following.length);
  } else {
    return Center(
      child: Text(
        'Bhai bhi kisi ko Follow nahi karta',
        style: kInsideText,
      ),
    );
  }
}
