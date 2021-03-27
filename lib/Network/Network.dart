import 'dart:convert';
import 'package:http/http.dart';

import 'URI.dart';

class NetworkLoader {

  final String userId;
  final api = API();
  NetworkLoader(this.userId);
  
  Future<bool> checkUsername() async {
    try {
      final uri = api.userURI().toString() + '/$userId';
      Response response = await get(uri, headers: api.headers);
      if (response.statusCode == 200) {
        return true;
      } else
        return false;
    } catch (e) {
      print('ERROR : $e');
      return false;
    }
  }

  Future<Map> getUserData() async {
    try{
    final Map map = await getInitialData();
    final List<dynamic> repoData = await getSpecificData('repos');
    final List<dynamic> starredData = await getSpecificData('starred');
    final List<dynamic> followersData = await getSpecificData('followers');
    final List<dynamic> followingData = await getSpecificData('following');
    final List<dynamic> organisationsData = await getSpecificData('orgs');
    map['repos'] = repoData;
    map['starred'] = starredData;
    map['followers'] = followersData;
    map['following'] = followingData;
    map['organisations'] = organisationsData;
    return map;
    }catch(e){
      print('ERROR: $e');
      return null;
    }
    
  }

  Future<Map<String, dynamic>> getInitialData() async {
    try {
      final uri = api.userURI().toString() + '/$userId';
      Response response = await get(uri, headers: api.headers);
      Map data = jsonDecode(response.body);
      return data;
    } catch (e) {
      print('ERROR: $e');
      throw e;
    }
  }

  Future<List<dynamic>> getSpecificData(String key) async {
    try {
      List temp = [];
      for (int page = 1;; page++) {
        final uri = api.userURI().toString() +
            '/$userId' +
            '/$key?page=$page&per_page=100';
        Response response = await get(uri, headers: api.headers);
        List data = jsonDecode(response.body);
        temp.addAll(data);
        if (data.length < 100) break;
      }
      return temp;
    } catch (e) {
      print('ERROR: $e');
      return [];
    }
  }
}
