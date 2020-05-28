import 'package:flutter/material.dart';
import 'package:gitoo/Common_Resources/Constants.dart';
import 'package:gitoo/Common_Resources/Shared_Widgets.dart';

List<String> repos = [];

class Repos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InsidePage(
      getList: getList(),
      title: 'Repos',
    );
  }
}

Widget getList() {
  if (repos.isNotEmpty) {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              '${repos[index]}',
              style: kInsideText.copyWith(fontWeight: FontWeight.normal),
            ),
          );
        },
        separatorBuilder: (BuildContext context, index) {
          return Divider(
            color: kLPrimary,
          );
        },
        itemCount: repos.length);
  } else {
    return Center(
      child: Text(
        'Bhai ne abhi tak kuch nahi banaya hai',
        style: kInsideText,
      ),
    );
  }
}
