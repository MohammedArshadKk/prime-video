import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

Future<List<dynamic>> get(String uri) async {
  try {
    final response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body)['results'] as List;
      return decodedData;
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    log('Error: $e');
    throw Exception('Error fetching data from $uri');
  }
}
