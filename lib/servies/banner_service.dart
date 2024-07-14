// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:test_application/config/app.dart';
// import 'package:test_application/servies/auth_service.dart';

// class BannerService {
//   static Future<dynamic> fetchBanners() async {
//     try {
//       final response = await http.get(Uri.parse('$API_URL/api/banners'));
//       final banners = jsonDecode(response.body);
//       return banners;
//     } catch (e) {
//       print(e);
//     }
//   }

//   static Future<dynamic> create(File file, String title, String link) async {
//     try {
//       final response = await http.post('$API_URL/api/banners', headers: {
        
//       });
//     } catch (e) {
//       print(e);
//     }
//   }
// }
