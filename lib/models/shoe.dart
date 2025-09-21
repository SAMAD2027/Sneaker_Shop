// class Shoe {
//   final String name;
//   final String price;
//   final String imagePath;
//   final String description;

//   Shoe({
//     required this.name,
//     required this.price,
//     required this.imagePath,
//     required this.description,
//   });
// }
// lib/models/shoe.dart
// class Shoe {
//   final String id;
//   final String name;
//   final String description;
//   final double price;
//   final String imageUrl;

//   Shoe({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.imageUrl,
//   });

//   factory Shoe.fromJson(Map<String, dynamic> json) {
//     final priceVal = json['price'];
//     double priceParsed = 0.0;
//     if (priceVal is num) {
//       priceParsed = priceVal.toDouble();
//     } else if (priceVal is String) {
//       priceParsed = double.tryParse(priceVal) ?? 0.0;
//     }
//     return Shoe(
//       id: json['id'].toString(),
//       name: json['name'] ?? '',
//       description: json['description'] ?? '',
//       price: priceParsed,
//       imageUrl: json['imageUrl'] ?? '',
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'name': name,
//         'description': description,
//         'price': price,
//         'imageUrl': imageUrl,
//       };
// }
// class Shoe {
//   final String id;
//   final String name;
//   final String description;
//   final double price;
//   final String imageUrl;

//   Shoe({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.imageUrl,
//   });

//   factory Shoe.fromJson(Map<String, dynamic> json) {
//     return Shoe(
//       id: json['id'].toString(),
//       name: json['name'],
//       description: json['description'],
//       price: (json['price'] as num).toDouble(),
//       imageUrl: json['imageUrl'],
//     );
//   }
// }
class Shoe {
  final String name;
  final String description;
  final double price;
  final String imagePath;
  final List<double> size;
  String? category;

  Shoe({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.size,
    this.category,
  });
}
