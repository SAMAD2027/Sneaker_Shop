// // lib/services/api_service.dart
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../models/shoe.dart';

// class ApiService {
//   final String baseUrl;
//   final http.Client client;

//   ApiService({this.baseUrl = 'https://68c19cf198c818a694028413.mockapi.io/sneaker_shop_app', http.Client? client})
//       : client = client ?? http.Client();

//   Future<List<Shoe>> fetchShoes() async {
//     final uri = Uri.parse('$baseUrl/sneaker_shop_app'); // change to your endpoint
//     final res = await client.get(uri);

//     if (res.statusCode == 200) {
//       final List data = json.decode(res.body) as List;
//       return data.map((e) => Shoe.fromJson(e as Map<String, dynamic>)).toList();
//     } else {
//       throw Exception('Failed to load shoes: ${res.statusCode}');
//     }
//   }
// }
