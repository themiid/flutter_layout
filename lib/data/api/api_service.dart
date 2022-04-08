import 'dart:convert';
import 'package:flutter_layout/data/model/tourism_place.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<TourismResult> topHeadlines() async {
    final response =
    await http.get(Uri.parse('http://localhost:8060/api-tourism/tourism.php'));
    if (response.statusCode == 200) {
      return TourismResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}