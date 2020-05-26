import 'package:flutter/material.dart';
import 'package:http/http.dart';

class NetworkLoader {
  String url;
  String git = 'https://api.github.com/';
  Future getData() async {
    Response response = await get('${git}url');
    if (response.statusCode != 400) return response.body;
  }
}
