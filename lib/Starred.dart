import 'package:flutter/material.dart';
import 'package:gitoo/Constants.dart';

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
          title: Text('Starred'),
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
            style: kInsideHeading,
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
        style: kInsideHeading,
      ),
    );
  }
}
