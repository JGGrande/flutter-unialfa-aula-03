import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpClient {
  Future<List<dynamic>> getJson({ required String url }) async {
    final response = await http.get(Uri.parse(url));
    final responseBody = json.decode((response.body));
    return responseBody['results'];
  }
}