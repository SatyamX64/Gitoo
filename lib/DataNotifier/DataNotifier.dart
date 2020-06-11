import 'package:flutter/material.dart';
import 'package:gitoo/Common_Resources/Constants.dart';
import 'package:gitoo/DataBundle/DataBundle.dart';
import 'package:provider/provider.dart';

class DataNotifier extends ChangeNotifier {
  User user;
  UserBigData userBigData;
  DataNotifier(BuildContext context) {
    this.user = Provider.of<User>(context, listen: false);
    this.userBigData = Provider.of<UserBigData>(context, listen: false);
  }
  Widget showFollowers() {
    List followersList = userBigData.map['followers'];
    if (followersList.isNotEmpty) {
      return ListView.separated(
          itemBuilder: (BuildContext context, index) {
            return Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('${followersList[index]['avatar_url']}'),
                    radius: 20,
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        '${followersList[index]['login']}',
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
          itemCount: followersList.length);
    } else {
      return Center(
        child: Text(
          'Nothing to Show here',
          style: kInsideText,
        ),
      );
    }
  }
  Widget showFollowing() {
    List followingList = userBigData.map['following'];
    if (followingList.isNotEmpty) {
      return ListView.separated(
          itemBuilder: (BuildContext context, index) {
            return Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('${followingList[index]['avatar_url']}'),
                    radius: 20,
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        '${followingList[index]['login']}',
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
          itemCount: followingList.length);
    } else {
      return Center(
        child: Text(
          'Nothing to Show here',
          style: kInsideText,
        ),
      );
    }
  }
  Widget showOrgs() {
    List organisationsList = userBigData.map['organisations'];
    if (organisationsList.isNotEmpty) {
      return ListView.separated(
          itemBuilder: (BuildContext context, index) {
            return Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        '${organisationsList[index]['avatar_url']}'),
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
                            '${organisationsList[index]['login']}',
                            style: kInsideText.copyWith(
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      Text(
                        '${organisationsList[index]['description'] ?? 'I don\'t know'}',
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
          itemCount: organisationsList.length);
    } else {
      return Center(
        child: Text(
          'Nothing to Show here',
          style: kInsideText,
        ),
      );
    }
  }
  Widget showRepos() {
    List reposList = userBigData.map['repos'];
    if (reposList.isNotEmpty) {
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
                        '${reposList[index]['name']}',
                        style:
                            kInsideText.copyWith(fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  Text(
                    '${reposList[index]['language'] ?? 'I don\'t know'}',
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
          itemCount: reposList.length);
    } else {
      return Center(
        child: Text(
          'Nothing to Show here',
          style: kInsideText,
        ),
      );
    }
  }
  Widget showStarred() {
    List starredList = userBigData.map['starred'];
    if (starredList.isNotEmpty) {
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
                        '${starredList[index]['full_name']}',
                        style:
                            kInsideText.copyWith(fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  Text(
                    '${starredList[index]['language'] ?? 'I don\'t know'}',
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
          itemCount: starredList.length);
    } else {
      return Center(
        child: Text(
          'Nothing to show here',
          style: kInsideText,
        ),
      );
    }
  }
}
