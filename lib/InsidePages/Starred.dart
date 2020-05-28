import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:gitoo/Common_Resources/Constants.dart';
import 'package:gitoo/Common_Resources/Shared_Widgets.dart';

List<String> starred = [];

class Starred extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InsidePage(
      title: 'Starred',
      getList: getList(),
    );
  }
}

Widget getList() {
  if (starred.isNotEmpty) {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              '${starred[index]}',
              style: kInsideText.copyWith(fontWeight: FontWeight.normal),
            ),
          );
        },
        separatorBuilder: (BuildContext context, index) {
          return Divider(
            color: kLPrimary,
          );
        },
        itemCount: starred.length);
  } else {
    return Center(
      child: Text(
        'Bhai ko kisi ka kaam acha nahi lagta',
        style: kInsideText,
      ),
    );
  }
}
