import 'dart:convert';
import 'package:gitoo/InsidePages/Organizations.dart';
import 'package:gitoo/InsidePages/Followers.dart';
import 'package:gitoo/InsidePages/Following.dart';
import 'package:gitoo/InsidePages/Starred.dart';
import 'package:gitoo/InsidePages/Repos.dart';
import 'package:http/http.dart';

String name;
String email;
String avatar;
String info;

class NetworkLoader {
  String username;
  NetworkLoader({this.username});
  String git = 'https://api.github.com/users/';
  Future<bool> checkUsername() async {
    Response response = await get('$git$username');
    print(response.statusCode);
    if (response.statusCode == 200) {
      return true;
    } else
      return false;
  }

  Future<void> getData() async {
    Response response = await get('$git$username');
    Map data = jsonDecode(response.body);
    name = data['name'];
    avatar = data['avatar_url'];
    email = data['email'];
    info = data['bio'];
    await getOrganisations();
    await getFollowers();
    await getFollowing();
    await getStarred();
    await getRepos();
    return;
  }

  Future<void> getFollowers() async {
    Response response = await get('$git$username/followers');
    followers.clear();
    List data = jsonDecode(response.body);
    for (int i = 0; i < data.length; i++) {
      followers.add(data[i]['login']);
    }
    return;
  }

  Future<void> getFollowing() async {
    Response response = await get('$git$username/following');
    List data = jsonDecode(response.body);
    following.clear();
    for (int i = 0; i < data.length; i++) {
      following.add(data[i]['login']);
    }
    return;
  }

  Future<void> getStarred() async {
    Response response = await get('$git$username/starred');
    List data = jsonDecode(response.body);
    starred.clear();
    for (int i = 0; i < data.length; i++) {
      starred.add(data[i]['full_name']);
    }
    return;
  }

  Future<void> getOrganisations() async {
    Response response = await get('$git$username/orgs');
    List data = jsonDecode(response.body);
    organizations.clear();
    for (int i = 0; i < data.length; i++) {
      organizations.add(data[i]['login']);
    }
    return;
  }

  Future<void> getRepos() async {
    Response response = await get('$git$username/repos');
    List data = jsonDecode(response.body);
    repos.clear();
    for (int i = 0; i < data.length; i++) {
      repos.add(data[i]['name']);
    }
    return;
  }
}
