// import 'package:flutter/material.dart';
// import 'package:sneaker_shop/components/bottom_nav_bar.dart';
// import 'package:sneaker_shop/pages/cart_page.dart';
// import 'package:sneaker_shop/pages/shop_page.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // this selected index is to control the bootom nav bar
//   int _selectedIndex = 0;
//   // this methid will update our selected index
//   // when the user taps on the bootom bar

//   void navigateBottomBar(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   // pages to display
//   final List<Widget> _pages = [
//     // shop page
//     const ShopPage(),

//     //
//     const CartPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       bottomNavigationBar: MyBottomNavBar(
//         onTabChange: (index) => navigateBottomBar(index),
//       ),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: Builder(
//           builder: (context) {
//             return IconButton(
//               icon: Padding(
//                 padding: const EdgeInsets.only(left: 12.0),
//                 child: Icon(Icons.menu, color: Colors.black),
//               ),
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//             );
//           },
//         ),
//       ),
//       drawer: Drawer(
//         backgroundColor: Colors.black,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               children: [
//                 DrawerHeader(child: Image.asset('lib/images/nike.png')),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: Divider(color: Colors.black),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 25),
//                   child: ListTile(
//                     leading: Icon(Icons.home, color: Colors.white),
//                     title: Text('Home', style: TextStyle(color: Colors.white)),
//                     onTap: () {},
//                   ),
//                 ),

//                 // other pages
//                 Padding(
//                   padding: const EdgeInsets.only(left: 25),
//                   child: ListTile(
//                     leading: Icon(Icons.info, color: Colors.white),
//                     title: Text('About', style: TextStyle(color: Colors.white)),
//                     onTap: () {},
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 25, bottom: 25),
//               child: ListTile(
//                 leading: Icon(Icons.logout, color: Colors.white),
//                 title: Text('Logout', style: TextStyle(color: Colors.white)),
//                 onTap: () => {},
//               ),
//             ),
//           ],
//           // logo
//         ),
//       ),

//       body: _pages[_selectedIndex],
//     );
//   }
// }

// import 'package:flutter/material.dart';

// import '../components/bottom_nav_bar.dart';
// import 'shop_page.dart';
// import 'cart_page.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;

//   void navigateBottomBar(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   final List<Widget> _pages = [
//     const ShopPage(),
//     const CartPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       bottomNavigationBar: MyBottomNavBar(
//         onTabChange: (index) => navigateBottomBar(index),
//       ),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: Builder(
//           builder: (context) {
//             return IconButton(
//               icon: const Padding(
//                 padding: EdgeInsets.only(left: 12.0),
//                 child: Icon(Icons.menu, color: Colors.black),
//               ),
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//             );
//           },
//         ),
//       ),
//       drawer: Drawer(
//         backgroundColor: Colors.black,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               children: [
//                 DrawerHeader(child: Image.asset('lib/images/nike.png')),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25),
//                   child: Divider(color: Colors.black),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 25),
//                   child: ListTile(
//                     leading: const Icon(Icons.home, color: Colors.white),
//                     title: const Text('Home',
//                         style: TextStyle(color: Colors.white)),
//                     onTap: () {},
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 25),
//                   child: ListTile(
//                     leading: const Icon(Icons.info, color: Colors.white),
//                     title: const Text('About',
//                         style: TextStyle(color: Colors.white)),
//                     onTap: () {},
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 25, bottom: 25),
//               child: ListTile(
//                 leading: const Icon(Icons.logout, color: Colors.white),
//                 title:
//                     const Text('Logout', style: TextStyle(color: Colors.white)),
//                 onTap: () => {},
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: _pages[_selectedIndex],
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import 'shop_page.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      // Custom floating app bar
      appBar: AppBar(
        elevation: 6,
        shadowColor: Colors.black26,
        backgroundColor: Colors.white.withOpacity(0.9),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        title: const Text(
          "Sneaker Shop",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),

      // Glass effect drawer
      drawer: Drawer(
        backgroundColor: Colors.black.withOpacity(0.85),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/nike.png',
                    height: 100,
                  ),
                ),
                const Divider(color: Colors.white24, thickness: 1),
                ListTile(
                  leading: const Icon(Icons.home, color: Colors.white),
                  title: const Text('Home',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  onTap: () => navigateBottomBar(0),
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart, color: Colors.white),
                  title: const Text('Cart',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  onTap: () => navigateBottomBar(1),
                ),
                ListTile(
                  leading: const Icon(Icons.info_outline, color: Colors.white),
                  title: const Text('About',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  onTap: () {},
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 25),
              child: ListTile(
                leading: const Icon(Icons.logout, color: Colors.white),
                title: const Text('Logout',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),

      // Animated page transition when switching tabs
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: _pages[_selectedIndex],
      ),

      // Custom bottom navigation
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
