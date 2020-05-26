import 'package:flutter/material.dart';
import 'package:gitoo/Constants.dart';

List<String> organizations = [
//  'Andi',
//  'Bandi',
//  'Sandi',
]

class Organizations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Organizations'),
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
            style: kGeneralText,
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
        style: kGeneralText,
      ),
    );
  }
}
