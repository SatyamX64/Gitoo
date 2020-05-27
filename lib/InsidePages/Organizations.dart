import 'package:flutter/material.dart';
import 'package:gitoo/Common_Resources/Constants.dart';

List<String> organizations = [];

class Organizations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Organizations',
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
  if (organizations.isNotEmpty) {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Text(
            '${organizations[index]}',
            style: kInsideText,
          );
        },
        separatorBuilder: (BuildContext context, index) {
          return Divider(
            color: kLPrimary,
          );
        },
        itemCount: organizations.length);
  } else {
    return Center(
      child: Text(
        'Bhai ko abhi kahi bhi kaam nhi mila',
        style: kInsideText,
      ),
    );
  }
}
