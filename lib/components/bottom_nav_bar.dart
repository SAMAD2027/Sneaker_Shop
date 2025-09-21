// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

// // ignore: must_be_immutable
// class MyBottomNavBar extends StatelessWidget {
//   void Function(int)? onTabChange;
//   MyBottomNavBar({super.key, required this.onTabChange});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 20),
//       child: GNav(
//         color: Colors.grey[400],
//         activeColor: Colors.grey.shade700,
//         tabActiveBorder: Border.all(color: Colors.white),
//         tabBackgroundColor: Colors.grey.shade100,
//         mainAxisAlignment: MainAxisAlignment.center,
//         tabBorderRadius: 16,
//         gap: 8,
//         onTabChange: (value) => onTabChange!(value),
//         tabs: const [
//           GButton(icon: Icons.home, text: "Shop"),
//           GButton(icon: Icons.shopping_bag_rounded, text: "Cart"),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      color: Colors.white,
      child: GNav(
        gap: 8,
        activeColor: Colors.grey.shade800,
        color: Colors.grey[500],
        tabBackgroundColor: Colors.grey.shade100,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        onTabChange: (index) => onTabChange?.call(index),
        tabs: const [
          GButton(icon: Icons.home, text: 'Shop'),
          GButton(icon: Icons.shopping_bag_rounded, text: 'Cart'),
        ],
      ),
    );
  }
}
