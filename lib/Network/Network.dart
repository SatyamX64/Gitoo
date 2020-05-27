import 'dart:convert';
import 'package:gitoo/InsidePages/Organizations.dart';
import 'package:gitoo/InsidePages/Social.dart';
import 'package:gitoo/InsidePages/Starred.dart';
import 'package:gitoo/InsidePages/Technical.dart';
import 'package:http/http.dart';

String name = 'Yaha Name aayega';
String email = 'Yaha Email aayegi';
String avatar =
    'https://www.punjabigram.com/pg/ajay_devgan/ajay_devgan_wearing_black_goggle.jpg';
String info = 'Do shabd by User';

class NetworkLoader {
  String username;
  NetworkLoader({this.username});
  String git = 'https://api.github.com/users/';
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
    List data = jsonDecode(response.body);
    followers.clear();
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
