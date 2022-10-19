import 'dart:convert';
import 'package:http/http.dart' as http;

var data;
set currentPage(int currentPage) {}
Future<void> getUserApi() async {
  final response = await http.get(Uri.parse(
      'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
  if (response.statusCode == 200) {
    data = jsonDecode(response.body.toString());
  } else {}
}
