import 'dart:convert';
import 'package:gitoo/InsidePages/List.dart';
import 'package:http/http.dart';

String name;
String email;
String avatar;
String info;
int noOfRepos;
int noOfFollowers;
int noOfFollowing;
String location;
String userId;
String twitter;
String blogger;
Map<String, String> headers = {'Authorization': 'Apna khud se daalo'};

class NetworkLoader {
  String username;
  NetworkLoader({this.username});
  String git = 'https://api.github.com/users/';
  Future<bool> checkUsername() async {
    Response response = await get('$git$username', headers: headers);
    print(response.statusCode);
    if (response.statusCode == 200) {
      return true;
    } else
      return false;
  }

  Future<void> getData() async {
    Response response = await get('$git$username', headers: headers);
    Map data = jsonDecode(response.body);
    name = data['name'];
    avatar = data['avatar_url'];
    email = data['email'];
    info = data['bio'];
    noOfRepos = data['public_repos'];
    noOfFollowers = data['followers'];
    noOfFollowing = data['following'];
    location = data['location'];
    twitter = data['twitter_username'];
    blogger = data['blog'];
    print(response.headers);
    await getOrganisations();
    await getFollowers();
    await getFollowing();
    await getStarred();
    await getRepos();
    return;
  }

  Future<void> getFollowers() async {
    int page = 1;
    Response response = await get(
        '$git$username/followers?page=$page&per_page=100',
        headers: headers);
    followers.clear();
    followersAvatar.clear();
    List data = jsonDecode(response.body);
    for (int i = 0; i < data.length; i++) {
      followers.add(data[i]['login']);
      followersAvatar.add(data[i]['avatar_url']);
    }

    return;
  }

  Future<void> getFollowing() async {
    Response response =
        await get('$git$username/following?per_page=100', headers: headers);
    List data = jsonDecode(response.body);
    following.clear();
    followingAvatar.clear();
    for (int i = 0; i < data.length; i++) {
      following.add(data[i]['login']);
      followingAvatar.add(data[i]['avatar_url']);
    }
    return;
  }

  Future<void> getStarred() async {
    Response response =
        await get('$git$username/starred?per_page=100', headers: headers);
    List data = jsonDecode(response.body);
    starred.clear();
    starredLanguage.clear();
    for (int i = 0; i < data.length; i++) {
      starred.add(data[i]['full_name']);
      starredLanguage.add(data[i]['language']);
    }
    return;
  }

  Future<void> getOrganisations() async {
    Response response =
        await get('$git$username/orgs?per_page=100', headers: headers);
    List data = jsonDecode(response.body);
    organizations.clear();
    for (int i = 0; i < data.length; i++) {
      organizations.add(data[i]['login']);
      organizationsAvatar.add(data[i]['avatar_url']);
      organizationsDesc.add(data[i]['description']);
    }
    return;
  }

  Future<void> getRepos() async {
    Response response =
        await get('$git$username/repos?per_page=100', headers: headers);
    List data = jsonDecode(response.body);
    repos.clear();
    reposLanguage.clear();
    for (int i = 0; i < data.length; i++) {
      repos.add(data[i]['name']);
      reposLanguage.add(data[i]['language']);
    }
    return;
  }
}
