import 'package:flutter/cupertino.dart';
import 'package:gitoo/Network/Network.dart';
import 'package:gitoo/Network/URI.dart';

class DataBundle {
  static final api = API();
  final networkLoader = NetworkLoader(api);
  Future<User> getUserData(String userId) async {
    Map<String, dynamic> map = {};
    final Map data = await networkLoader.getData(userId);
    if (data != null) {
      for (int i = 0; i < endpoints.length; i++) {
        if (data.containsKey(endpoints[i])) {
          map[endpoints[i]] = data[endpoints[i]];
        }
      }
    }
    return User(map: map);
  }

  Future<UserBigData> getUserBigData(String userId) async {
    final List<dynamic> repoData = await networkLoader.getRepos(userId);
    final List<dynamic> starredData = await networkLoader.getStarred(userId);
    final List<dynamic> followersData =
        await networkLoader.getFollowers(userId);
    final List<dynamic> followingData =
        await networkLoader.getFollowing(userId);
    final List<dynamic> organisationsData =
        await networkLoader.getOrganisations(userId);
    final Map map = {};
    map['repos'] = repoData;
    map['starred'] = starredData;
    map['followers'] = followersData;
    map['following'] = followingData;
    map['organisations'] = organisationsData;
    return UserBigData(map: map);
  }

  List<String> endpoints = [
    'login',
    'avatar_url',
    'name',
    'blog',
    'location',
    'email',
    'bio',
    'public_repos',
    'followers',
    'following',
  ];
}

class User {
  final Map map;
  User({@required this.map});
}

class UserBigData {
  final Map map;
  UserBigData({@required this.map});
}
