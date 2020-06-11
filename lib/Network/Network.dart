import 'dart:convert';
import 'package:http/http.dart';

import 'URI.dart';

class NetworkLoader {
  final API api;
  NetworkLoader(this.api);
  Future<bool> checkUsername(String userId) async {
    final uri = api.userURI().toString() + '/$userId';
    Response response = await get(uri, headers: api.headers);
    if (response.statusCode == 200) {
      return true;
    } else
      return false;
  }

  Future<Map<String, dynamic>> getData(String userId) async {
    final uri = api.userURI().toString() + '/$userId';
    Response response = await get(uri, headers: api.headers);
    Map data = jsonDecode(response.body);
    return data;
  }

  Future<List<dynamic>> getFollowers(String userId) async {
    List temp = [];
    for (int page = 1;; page++) {
      final uri = api.userURI().toString() +
          '/$userId' +
          '/followers?page=$page&per_page=100';
      Response response = await get(uri, headers: api.headers);
      List data = jsonDecode(response.body);
      temp.addAll(data);
      if (data.length < 100) break;
    }
    return temp;
  }

  Future<List<dynamic>> getFollowing(String userId) async {
    List temp = [];
    for (int page = 1;; page++) {
      final uri = api.userURI().toString() +
          '/$userId' +
          '/following?page=$page&per_page=100';
      Response response = await get(uri, headers: api.headers);
      List data = jsonDecode(response.body);
      temp.addAll(data);
      if (data.length < 100) break;
    }
    return temp;
  }

  Future<List<dynamic>> getStarred(String userId) async {
    List temp = [];
    for (int page = 1;; page++) {
      final uri = api.userURI().toString() +
          '/$userId' +
          '/starred?page=$page&per_page=100';
      Response response = await get(uri, headers: api.headers);
      List data = jsonDecode(response.body);
      temp.addAll(data);
      if (data.length < 100) break;
    }

    return temp;
  }

  Future<List<dynamic>> getOrganisations(String userId) async {
    List temp = [];
    for (int page = 0;; page++) {
      final uri = api.userURI().toString() +
          '/$userId' +
          '/orgs?page=$page&per_page=100';
      Response response = await get(uri, headers: api.headers);
      List data = jsonDecode(response.body);
      temp.addAll(data);
      if (data.length < 100) break;
    }
    return temp;
  }

  Future<List<dynamic>> getRepos(String userId) async {
    List temp = [];
    for (int page = 0;; page++) {
      final uri = api.userURI().toString() +
          '/$userId' +
          '/repos?page=$page&per_page=100';
      Response response = await get(uri, headers: api.headers);
      List data = jsonDecode(response.body);
      temp.addAll(data);
      if (data.length < 100) break;
    }
    return temp;
  }
}
