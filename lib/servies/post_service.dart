import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_application/config/app.dart';

class PostService {
  static final Future<SharedPreferences> _prefs =
      SharedPreferences.getInstance();

  static Future<dynamic> futurePosts() async {
    final response = await http.get(
      Uri.parse('$API_URL/api/posts'),
      headers: {'Content-Type': 'application/json'},
    );
    return jsonDecode(response.body);
  }
    static Future<dynamic> futurePost(String id) async {
    final response = await http.get(
      Uri.parse('$API_URL/api/posts/$id'),
      headers: {'Content-Type': 'application/json'},
    );
    return jsonDecode(response.body);
  }
}
