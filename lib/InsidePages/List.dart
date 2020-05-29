import 'package:flutter/material.dart';
import 'package:gitoo/Common_Resources/Constants.dart';

List<String> followers = [];
Widget getFollowers() {
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

List<String> following = [];
Widget getFollowing() {
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

List<String> organizations = [];
Widget getOrgs() {
  if (organizations.isNotEmpty) {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              '${organizations[index]}',
              style: kInsideText.copyWith(fontWeight: FontWeight.normal),
            ),
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
        'Bhai ko kahi kaam nahi mila',
        style: kInsideText,
      ),
    );
  }
}

List<String> repos = [];
Widget getRepos() {
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

List<String> starred = [];
Widget getStarred() {
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
