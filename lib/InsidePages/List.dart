import 'package:flutter/material.dart';
import 'package:gitoo/Common_Resources/Constants.dart';

List<String> followers = [];
List<String> followersAvatar = [];
Widget getFollowers() {
  if (followers.isNotEmpty) {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15, right: 10),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('${followersAvatar[index]}'),
                  radius: 20,
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '${followers[index]}',
                      style:
                          kInsideText.copyWith(fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
            ],
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
        'Nothing to Show here',
        style: kInsideText,
      ),
    );
  }
}

List<String> following = [];
List<String> followingAvatar = [];
Widget getFollowing() {
  if (following.isNotEmpty) {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15, right: 10),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('${followingAvatar[index]}'),
                  radius: 20,
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '${following[index]}',
                      style:
                          kInsideText.copyWith(fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
            ],
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
        'Nothing to Show here',
        style: kInsideText,
      ),
    );
  }
}

List<String> organizations = [];
List<String> organizationsAvatar = [];
List<String> organizationsDesc = [];
Widget getOrgs() {
  if (organizations.isNotEmpty) {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15, right: 10),
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage('${organizationsAvatar[index]}'),
                  radius: 20,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${organizations[index]}',
                          style: kInsideText.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    Text(
                      '${organizationsDesc[index] ?? 'I don\'t know'}',
                      style: kInsideText.copyWith(color: kNeon),
                    ),
                  ],
                ),
              )
            ],
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
        'Nothing to Show here',
        style: kInsideText,
      ),
    );
  }
}

List<String> repos = [];
List<String> reposLanguage = [];
Widget getRepos() {
  if (repos.isNotEmpty) {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${repos[index]}',
                      style:
                          kInsideText.copyWith(fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                Text(
                  '${reposLanguage[index] ?? 'I don\'t know'}',
                  style: kInsideText.copyWith(color: kNeon),
                ),
              ],
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
        'Nothing to Show here',
        style: kInsideText,
      ),
    );
  }
}

List<String> starred = [];
List<String> starredLanguage = [];
Widget getStarred() {
  if (starred.isNotEmpty) {
    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${starred[index]}',
                      style:
                          kInsideText.copyWith(fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                Text(
                  '${starredLanguage[index] ?? 'I don\'t know'}',
                  style: kInsideText.copyWith(color: kNeon),
                ),
              ],
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
        'Nothing to show here',
        style: kInsideText,
      ),
    );
  }
}
