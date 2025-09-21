// // // lib/models/cart.dart
// import 'package:flutter/material.dart';
// import '../models/shoe.dart';
// import '../services/api_service.dart';

// class Cart extends ChangeNotifier {
//   final List<Shoe> _shoeShop = []; // all shoes fetched from API
//   final List<Shoe> _userCart = []; // user’s selected cart items

//   bool isLoading = false;
//   String? error;

//   List<Shoe> getShoeList() => _shoeShop;
//   List<Shoe> getUserCart() => _userCart;

//   /// ✅ Fetch shoes from API
//   Future<void> fetchShoes() async {
//     isLoading = true;
//     error = null;
//     notifyListeners();

//     try {
//       final api = ApiService();
//       final shoes = await api.fetchShoes();

//       _shoeShop
//         ..clear()
//         ..addAll(shoes);

//       isLoading = false;
//       notifyListeners();
//     } catch (e) {
//       error = e.toString();
//       isLoading = false;
//       notifyListeners();
//     }
//   }

//   /// ✅ Replace shoe list (for initState manual call)
//   void setShoeList(List<Shoe> shoes) {
//     _shoeShop
//       ..clear()
//       ..addAll(shoes);
//     notifyListeners();
//   }

//   /// ✅ Add shoe to cart
//   void addItemToCart(Shoe shoe) {
//     _userCart.add(shoe);
//     notifyListeners();
//   }

//   /// ✅ Remove shoe from cart
//   void removeItemFromCart(Shoe shoe) {
//     _userCart.remove(shoe);
//     notifyListeners();
//   }
// }
import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class CartItemModel {
  final Shoe shoe;
  final double size;
  CartItemModel({required this.shoe, required this.size});
}

class Cart extends ChangeNotifier {
  final List<Shoe> _shoeShop = [
    Shoe(
      name: "AIRFORCE1",
      description: "Comfortable everyday sneakers",
      price: 120,
      imagePath: "lib/images/AIRFORCE1.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE2",
      description: "Premium running shoes",
      price: 180,
      imagePath: "lib/images/AIRFORCE2.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE3",
      description: "Iconic basketball sneakers",
      price: 200,
      imagePath: "lib/images/AIRFORCE3.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE4",
      description: "Stylish casual wear",
      price: 150,
      imagePath: "lib/images/AIRFORCE4.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE5",
      description: "High-performance training shoes",
      price: 130,
      imagePath: "lib/images/AIRFORCE5.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE6",
      description: "Versatile lifestyle sneakers",
      price: 110,
      imagePath: "lib/images/AIRFORCE6.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE7",
      description: "Cutting-edge design and comfort",
      price: 170,
      imagePath: "lib/images/AIRFORCE7.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE8",
      description: "Classic style with modern features",
      price: 140,
      imagePath: "lib/images/AIRFORCE8.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE9",
      description: "Sleek and futuristic look",
      price: 160,
      imagePath: "lib/images/AIRFORCE9.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE10",
      description: "Bold design and superior cushioning",
      price: 190,
      imagePath: "lib/images/AIRFORCE10.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE11",
      description: "Modern aesthetics with comfort",
      price: 125,
      imagePath: "lib/images/AIRFORCE11.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE12",
      description: "Contemporary style and performance",
      price: 135,
      imagePath: "lib/images/AIRFORCE12.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE13",
      description: "Elegant design with comfort",
      price: 145,
      imagePath: "lib/images/AIRFORCE13.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE14",
      description: "Futuristic design and cushioning",
      price: 155,
      imagePath: "lib/images/AIRFORCE14.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE15",
      description: "Sleek design with superior comfort",
      price: 165,
      imagePath: "lib/images/AIRFORCE15.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE16",
      description: "Retro style with modern comfort",
      price: 175,
      imagePath: "lib/images/AIRFORCE16.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE17",
      description: "Special edition with unique design",
      price: 185,
      imagePath: "lib/images/AIRFORCE17.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE18",
      description: "Special edition with elegant design",
      price: 195,
      imagePath: "lib/images/AIRFORCE18.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE19",
      description: "Special edition with futuristic design",
      price: 205,
      imagePath: "lib/images/AIRFORCE19.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE20",
      description: "Special edition with sleek design",
      price: 215,
      imagePath: "lib/images/AIRFORCE20.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE21",
      description: "Special edition with retro style",
      price: 225,
      imagePath: "lib/images/AIRFORCE21.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE22",
      description: "Lightweight and comfortable",
      price: 100,
      imagePath: "lib/images/AIRFORCE22.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE23",
      description: "Affordable running shoes",
      price: 90,
      imagePath: "lib/images/AIRFORCE23.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIRFORCE24",
      description: "Reliable daily trainers",
      price: 130,
      imagePath: "lib/images/AIRFORCE24.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "JORDAN1",
      description: "Natural running experience",
      price: 120,
      imagePath: "lib/images/JORDAN1.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN2",
      description: "Stability and support for runners",
      price: 140,
      imagePath: "lib/images/JORDAN2.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN3",
      description: "Responsive cushioning for runners",
      price: 110,
      imagePath: "lib/images/JORDAN3.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN4",
      description: "Trail running shoes",
      price: 150,
      imagePath: "lib/images/JORDAN4.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN5",
      description: "Premium cushioning for long runs",
      price: 160,
      imagePath: "lib/images/JORDAN5.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN6",
      description: "Versatile running shoes",
      price: 125,
      imagePath: "lib/images/JORDAN6.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN7",
      description: "Classic running shoes",
      price: 115,
      imagePath: "lib/images/JORDAN7.png.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN+1+LOW+TD",
      description: "Lightweight trainers",
      price: 105,
      imagePath: "lib/images/JORDAN+1+LOW+TD.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN+1+MID+TD",
      description: "Cushioned running shoes",
      price: 135,
      imagePath: "lib/images/JORDAN+1+MID+TD.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN+HEIR+SERIES",
      description: "Durable running shoes",
      price: 145,
      imagePath: "lib/images/JORDAN+HEIR+SERIES.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN+LUKA+.77",
      description: "Stylish running shoes",
      price: 155,
      imagePath: "lib/images/JORDAN+LUKA+.77.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN+LUKA+4",
      description: "High-performance running shoes",
      price: 165,
      imagePath: "lib/images/JORDAN+LUKA+4.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN+SESSION",
      description: "Comfortable everyday running shoes",
      price: 175,
      imagePath: "lib/images/JORDAN+SESSION.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN+SPIZIKE+LOW",
      description: "Breathable running shoes",
      price: 185,
      imagePath: "lib/images/JORDAN+SPIZIKE+LOW.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN+SPIZIKE+LOW",
      description: "Breathable running shoes",
      price: 185,
      imagePath: "lib/images/JORDAN+SPIZIKE+LOW.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "JORDAN+STADIUM+90+LOW+TD",
      description: "Cushioned trainers for running",
      price: 195,
      imagePath: "lib/images/JORDAN+STADIUM+90+LOW+TD.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "AIR+JORDAN+3+RETRO+OG",
      description: "Lightweight and durable",
      price: 205,
      imagePath: "lib/images/AIR+JORDAN+3+RETRO+OG.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "AIR+JORDAN+4+RM",
      description: "Affordable and reliable",
      price: 215,
      imagePath: "lib/images/AIR+JORDAN+4+RM.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "AIR+JORDAN5+RETRO",
      description: "High-performance and stylish",
      price: 225,
      imagePath: "lib/images/AIR+JORDAN+5+RETRO+OG+SP.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "AIR+JORDAN+12+RETRO",
      description: "Comfortable and supportive",
      price: 235,
      imagePath: "lib/images/AIR+JORDAN+12+RETRO.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "AIR+JORDAN+40",
      description: "Versatile and trendy",
      price: 245,
      imagePath: "lib/images/AIR+JORDAN+40.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "AIR+JORDAN+1+MID",
      description: "Classic design with modern comfort",
      price: 130,
      imagePath: "lib/images/JORDAN+1+LOW+TD.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "AIR+ZOOM+PEGASUS+41",
      description: "Sleek and stylish low-top sneakers",
      price: 120,
      imagePath: "lib/images/AIR+ZOOM+PEGASUS+41.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
    Shoe(
      name: "AIR+ZOOM+PEGASUS+41+LV8",
      description: "Iconic high-top basketball shoes",
      price: 140,
      imagePath: "lib/images/AIR+ZOOM+PEGASUS+41+LV8.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Air Force",
    ),
   
    
    Shoe(
      name: "NIKE+PEGASUS+PREMIUM",
      description: "High-top sneakers with a university blue colorway",
      price: 160,
      imagePath: "lib/images/NIKE+PEGASUS+PREMIUM.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Nike",
    ),
    Shoe(
      name: "NIKE+STRUCTURE+26+WIDE",
      description: "Low-top sneakers with a classic white design",
      price: 110,
      imagePath: "lib/images/NIKE+STRUCTURE+26+WIDE.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Nike",
    ),
    Shoe(
      name: "NIKE+VOMERO+18",
      description: "Mid-top sneakers with a versatile black colorway",
      price: 115,
      imagePath: "lib/images/NIKE+VOMERO+18.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Nike",
    ),
    Shoe(
      name: "PEGASUS+PLUS",
      description: "Affordable and comfortable running shoes",
      price: 95,
      imagePath: "lib/images/PEGASUS+PLUS.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Nike",
    ),
    Shoe(
      name: "W+AIR+ZM+PEGASUS+41+GTX",
      description: "Lightweight and breathable running shoes",
      price: 85,
      imagePath: "lib/images/W+AIR+ZM+PEGASUS+41+GTX.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Nike",
    ),
    Shoe(
      name: "W+AIR+ZOOM+PEGASUS+41+SE",
      description: "Cushioned and supportive running shoes",
      price: 125,
      imagePath: "lib/images/W+AIR+ZOOM+PEGASUS+41+SE.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Nike",
    ),
    Shoe(
      name: "+NIKE+PEGASUS+41+CM",
      description: "Stylish and trendy sneakers",
      price: 135,
      imagePath: "lib/images/W+NIKE+PEGASUS+41+CM.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Nike",
    ),
    Shoe(
      name: "WMNS+AIR+JORDAN+1+LOW",
      description: "Futuristic design with superior comfort",
      price: 145,
      imagePath: "lib/images/WMNS+AIR+JORDAN+1+LOW.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "WMNS+AIR+JORDAN+1+LOW+SE",
      description: "Elegant design with modern features",
      price: 155,
      imagePath: "lib/images/WMNS+AIR+JORDAN+1+LOW+SE.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "WMNS+AIR+JORDAN+1+MID",
      description: "Retro style with contemporary comfort",
      price: 165,
      imagePath: "lib/images/WMNS+AIR+JORDAN+1+MID.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
    Shoe(
      name: "WMNS+AIR+JORDAN+3+RETRO+T",
      description: "Bold design with advanced cushioning",
      price: 175,
      imagePath: "lib/images/WMNS+AIR+JORDAN+3+RETRO+T.avif",
      size: [5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, 10.5, 11, 12, 13],
      category: "Jordan",
    ),
 
  ];

  final List<CartItemModel> _userCart = [];

  Cart() {
// Auto-assign categories based on shoe name
    for (var shoe in _shoeShop) {
      final upperName = shoe.name.toUpperCase();
      if (upperName.contains("AIRFORCE")) {
        shoe.category = "Air Force";
      } else if (upperName.contains("JORDAN")) {
        shoe.category = "Air Jordan";
      } else {
        shoe.category = "Nike";
      }
    }
  }

  List<Shoe> getShoeList() => _shoeShop;
  List<CartItemModel> getUserCart() => _userCart;

  void addItemToCart(Shoe shoe, double size) {
    _userCart.add(CartItemModel(shoe: shoe, size: size));
    notifyListeners();
  }

  void removeItemFromCart(CartItemModel item) {
    _userCart.remove(item);
    notifyListeners();
  }

  double get totalPrice =>
      _userCart.fold(0.0, (sum, item) => sum + item.shoe.price);

  List<Shoe> getShoesByCategory(String category) =>
      _shoeShop.where((shoe) => shoe.category == category).toList();

  List<String> getAllCategories() =>
      _shoeShop.map((s) => s.category ?? 'Uncategorized').toSet().toList();
}
