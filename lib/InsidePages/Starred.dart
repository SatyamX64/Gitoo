import 'package:flutter/material.dart';
import 'package:gitoo/Common_Resources/Constants.dart';

List<String> starred = [
//  'Andi',
//  'Bandi',
//  'Sandi',
];

class Starred extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: kBackButton(context),
          title: Text(
            'Starred',
            style: kInsideHeading,
          ),
          backgroundColor: kPrimary,
        ),
        body: Container(
          child: getList(),
          color: kPrimary,
        ),
      ),
    );
  }
}

Widget getList() {
  if (starred.isNotEmpty) {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Text(
            '${starred[index]}',
            style: kInsideText,
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
