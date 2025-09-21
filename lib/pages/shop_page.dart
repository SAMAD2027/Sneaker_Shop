// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../components/shoe_tile.dart';
// import '../models/cart.dart';
// import '../models/shoe.dart';

// class ShopPage extends StatefulWidget {
//   const ShopPage({super.key});

//   @override
//   State<ShopPage> createState() => _ShopPageState();
// }

// class _ShopPageState extends State<ShopPage> {
//   // add shoe to cart
//   void addShoeToCart(Shoe shoe) {
//     Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

//     // alert the user,shoe successfully added
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text("Succesfully Added!"),
//         content: Text("Please Check your cart!"),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: Text('ok'),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<Cart>(
//       builder: (context, value, child) => Column(
//         children: [
//           Container(
//             padding: EdgeInsets.all(12),
//             margin: EdgeInsets.symmetric(horizontal: 25),
//             decoration: BoxDecoration(
//               color: Colors.grey[200],
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Search'),
//                 Icon(Icons.search, color: Colors.grey),
//               ],
//             ),
//           ),
//           Padding(
//             //message
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               'everyone files..... some fly longer than others',
//               style: TextStyle(color: Colors.grey[600]),
//             ),
//           ),
//           // hot pics
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 25),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Text(
//                   'Hot Picks 🔥',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   'See All',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blue,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 5),
//           Expanded(
//             child: ListView.builder(
//               // GridView.builder(
//               // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               //   crossAxisCount: 2,
//               //   mainAxisSpacing: 12,
//               //   crossAxisSpacing: 12,
//               //   childAspectRatio: 0.8,
//               // ),
//               itemCount: value.getShoeList().length,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 // create a shop
//                 Shoe shoe = value.getShoeList()[index];
//                 // return the shoe
//                 return ShoeTile(shoe: shoe, onTap: () => addShoeToCart(shoe));
//               },
//             ),
//           ),

//           Padding(
//             padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
//             child: Divider(color: Colors.blueGrey),
//           ),
//         ],
//       ),
//     );
//   }
// }
// part of lib/pages/shop_page.dart (inside _ShopPageState)
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:sneaker_shop/components/shoe_tile.dart';
// import '../models/cart.dart';
// import '../models/shoe.dart';

// class ShopPage extends StatefulWidget {
//   const ShopPage({super.key});

//   @override
//   State<ShopPage> createState() => _ShopPageState();
// }

// class _ShopPageState extends State<ShopPage> {
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       Provider.of<Cart>(context, listen: false).fetchShoes();
//     });
//   }

//   void addShoeToCart(Shoe shoe) {
//     Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text("Added!"),
//         content: Text("${shoe.name} added to cart."),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text('OK'),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<Cart>(
//       builder: (context, cart, child) {
//         if (cart.isLoading) {
//           return const Center(child: CircularProgressIndicator());
//         }

//         if (cart.error != null) {
//           return Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text("Error: ${cart.error}"),
//                 const SizedBox(height: 12),
//                 ElevatedButton(
//                   onPressed: () =>
//                       Provider.of<Cart>(context, listen: false).fetchShoes(),
//                   child: const Text("Retry"),
//                 ),
//               ],
//             ),
//           );
//         }

//         if (cart.getShoeList().isEmpty) {
//           return const Center(child: Text("No shoes found"));
//         }

//         return Column(
//           children: [
//             // ✅ Search Bar (UI only for now)
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search",
//                   prefixIcon: const Icon(Icons.search),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),
//             ),

//             // ✅ Shoe list
//             Expanded(
//               child: RefreshIndicator(
//                 onRefresh: () =>
//                     Provider.of<Cart>(context, listen: false).fetchShoes(),
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: cart.getShoeList().length,
//                   itemBuilder: (context, index) {
//                     final shoe = cart.getShoeList()[index];
//                     return ShoeTile(
//                       shoe: shoe,
//                       onTap: () => addShoeToCart(shoe),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../components/shoe_tile.dart';
// import '../models/cart.dart';
// import '../models/shoe.dart';

// class ShopPage extends StatelessWidget {
//   const ShopPage({super.key});

//   void addShoeToCart(BuildContext context, Shoe shoe) {
//     Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text("${shoe.name} added to cart"),
//         duration: Duration(seconds: 1),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<Cart>(
//       builder: (context, value, child) => Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text("Hot Picks 🔥",
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 12),
//             Expanded(
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: value.getShoeList().length,
//                 itemBuilder: (context, index) {
//                   final shoe = value.getShoeList()[index];
//                   return ShoeTile(
//                     shoe: shoe,
//                     onTap: () => addShoeToCart(context, shoe),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../models/cart.dart';
// import '../models/shoe.dart';
// import '../components/shoe_tile.dart';

// class ShopPage extends StatefulWidget {
//   const ShopPage({super.key});

//   @override
//   State<ShopPage> createState() => _ShopPageState();
// }

// class _ShopPageState extends State<ShopPage>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   List<String> categories = [];

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     final cart = Provider.of<Cart>(context);
//     categories = cart.getAllCategories();
//     _tabController = TabController(length: categories.length, vsync: this);
//   }

//   void _showSizePicker(Shoe shoe) {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       builder: (context) {
//         double? selectedSize = shoe.size.isNotEmpty ? shoe.size.first : null;
//         return StatefulBuilder(builder: (context, setState) {
//           return Padding(
//             padding: MediaQuery.of(context).viewInsets,
//             child: Container(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(shoe.name,
//                       style: const TextStyle(
//                           fontSize: 18, fontWeight: FontWeight.bold)),
//                   const SizedBox(height: 8),
//                   const Text('Choose size',
//                       style: TextStyle(color: Colors.grey)),
//                   const SizedBox(height: 12),
//                   Wrap(
//                     spacing: 8,
//                     runSpacing: 8,
//                     children: shoe.size.map((s) {
//                       final selected = selectedSize == s;
//                       return ChoiceChip(
//                         label: Text(s.toString()),
//                         selected: selected,
//                         onSelected: (_) => setState(() => selectedSize = s),
//                       );
//                     }).toList(),
//                   ),
//                   const SizedBox(height: 16),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       TextButton(
//                         onPressed: () => Navigator.pop(context),
//                         child: const Text('Cancel'),
//                       ),
//                       const SizedBox(width: 8),
//                       ElevatedButton(
//                         onPressed: selectedSize == null
//                             ? null
//                             : () {
//                                 Provider.of<Cart>(context, listen: false)
//                                     .addItemToCart(shoe, selectedSize!);
//                                 Navigator.pop(context);
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   SnackBar(
//                                       content: Text(
//                                           '${shoe.name} added (size ${selectedSize!})')),
//                                 );
//                               },
//                         child: const Text('Add to cart'),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           );
//         });
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<Cart>(context);
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text("Hot Picks 🔥",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//           const SizedBox(height: 12),

// // HOT PICKS HORIZONTAL LIST (first 6 items)
//           SizedBox(
//             height: 220,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: cart.getShoeList().length >= 6
//                   ? 6
//                   : cart.getShoeList().length,
//               itemBuilder: (context, index) {
//                 final shoe = cart.getShoeList()[index];
//                 return Padding(
//                   padding: const EdgeInsets.only(right: 12.0),
//                   child: ShoeTile(
//                     shoe: shoe,
//                     onAdd: () => _showSizePicker(shoe),
//                   ),
//                 );
//               },
//             ),
//           ),

//           const SizedBox(height: 16),

// // CATEGORIES TABBAR
//           TabBar(
//             controller: _tabController,
//             isScrollable: true,
//             labelColor: Colors.black,
//             indicatorColor: Colors.black,
//             tabs: categories.map((c) => Tab(text: c)).toList(),
//           ),

//           const SizedBox(height: 12),

// // TAB VIEW WITH GRID
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: categories.map((category) {
//                 final filtered = cart.getShoesByCategory(category);
//                 if (filtered.isEmpty)
//                   return const Center(child: Text('No items'));
//                 return GridView.builder(
//                   padding: const EdgeInsets.only(top: 8),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 0.68,
//                     crossAxisSpacing: 12,
//                     mainAxisSpacing: 12,
//                   ),
//                   itemCount: filtered.length,
//                   itemBuilder: (context, index) {
//                     final shoe = filtered[index];

//                     return ShoeTile(
//                         shoe: shoe, onAdd: () => _showSizePicker(shoe));
//                   },
//                 );
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../models/cart.dart';
// import '../models/shoe.dart';

// class ShopPage extends StatefulWidget {
//   const ShopPage({super.key});

//   @override
//   State<ShopPage> createState() => _ShopPageState();
// }

// class _ShopPageState extends State<ShopPage> {
//   String selectedCategory = "Air Force";

//   @override
//   Widget build(BuildContext context) {
//     final cart = context.watch<Cart>();

//     // Filter shoes based on selected category
//     final filteredShoes = cart.getShoeList().where((shoe) {
//       if (selectedCategory == "Air Force") {
//         return shoe.name.toUpperCase().contains("AIRFORCE");
//       } else if (selectedCategory == "Air Jordan") {
//         return shoe.name.toUpperCase().contains("JORDAN");
//       } else if (selectedCategory == "Nike") {
//         return shoe.name.toUpperCase().contains("NIKE") ||
//             shoe.name.toUpperCase().contains("PEGASUS");
//       }
//       return true;
//     }).toList();

//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         elevation: 0,
//         centerTitle: true,
//         title: const Text(
//           "Sneaker Shop",
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.shopping_cart_outlined),
//             onPressed: () {
//               Navigator.pushNamed(context, '/cart_page');
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Category Slider
//           SizedBox(
//             height: 60,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               children: [
//                 _buildCategoryChip("Air Force"),
//                 _buildCategoryChip("Air Jordan"),
//                 _buildCategoryChip("Nike"),
//               ],
//             ),
//           ),
//           const SizedBox(height: 10),

//           // Shoe Grid
//           Expanded(
//             child: GridView.builder(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 16,
//                 mainAxisSpacing: 16,
//                 childAspectRatio: 0.7,
//               ),
//               itemCount: filteredShoes.length,
//               itemBuilder: (context, index) {
//                 final shoe = filteredShoes[index];
//                 return _buildShoeCard(context, shoe, cart);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Category Filter Chip
//   Widget _buildCategoryChip(String category) {
//     final bool isSelected = selectedCategory == category;
//     return Padding(
//       padding: const EdgeInsets.only(right: 12),
//       child: ChoiceChip(
//         label: Text(category),
//         selected: isSelected,
//         selectedColor: Colors.black,
//         labelStyle: TextStyle(
//           color: isSelected ? Colors.white : Colors.black,
//           fontWeight: FontWeight.bold,
//         ),
//         onSelected: (_) {
//           setState(() => selectedCategory = category);
//         },
//       ),
//     );
//   }

//   // Shoe Card Widget
//   Widget _buildShoeCard(BuildContext context, Shoe shoe, Cart cart) {
//     return InkWell(
//       onTap: () => _showShoeDetail(context, shoe, cart),
//       borderRadius: BorderRadius.circular(20),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.05),
//               blurRadius: 8,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Expanded(
//               child: Hero(
//                 tag: shoe.name,
//                 child: ClipRRect(
//                   borderRadius:
//                       const BorderRadius.vertical(top: Radius.circular(20)),
//                   child: Image.asset(
//                     shoe.imagePath,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     shoe.name,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     "\$${shoe.price}",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.grey[700],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Show Shoe Detail Bottom Sheet
//   // Show Shoe Detail Bottom Sheet (Fixed for Overflow)
//   void _showShoeDetail(BuildContext context, Shoe shoe, Cart cart) {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true, // <— allows full height scrollable content
//       backgroundColor: Colors.white,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
//       ),
//       builder: (context) {
//         return SafeArea(
//           child: SingleChildScrollView(
//             padding: EdgeInsets.only(
//               left: 20,
//               right: 20,
//               bottom: MediaQuery.of(context).viewInsets.bottom + 20,
//               top: 20,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Hero(
//                   tag: shoe.name,
//                   child: Image.asset(
//                     shoe.imagePath,
//                     height: 150,
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//                 const SizedBox(height: 15),
//                 Text(
//                   shoe.name,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, fontSize: 20),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   shoe.description,
//                   style: TextStyle(color: Colors.grey[600]),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(height: 15),
//                 Wrap(
//                   spacing: 10,
//                   runSpacing: 10,
//                   children: shoe.size
//                       .map((s) => Chip(
//                             label: Text(s.toString()),
//                             backgroundColor: Colors.grey[200],
//                           ))
//                       .toList(),
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     minimumSize: const Size(double.infinity, 50),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                   icon:
//                       const Icon(Icons.add_shopping_cart, color: Colors.white),
//                   label: const Text(
//                     "Add to Cart",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   onPressed: () {
//                     cart.addItemToCart(shoe, shoe.size.first);
//                     Navigator.pop(context);
//                   },
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
// lib/pages/shop_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  String selectedCategory = "Air Force";
  final List<String> categories = ["Air Force", "Air Jordan", "Nike"];

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Cart>();

    // Filter shoes by category (simple rules based on name)
    final filteredShoes = cart.getShoeList().where((shoe) {
      final up = shoe.name.toUpperCase();
      if (selectedCategory == "Air Force") return up.contains("AIRFORCE");
      if (selectedCategory == "Air Jordan") return up.contains("JORDAN");
      if (selectedCategory == "Nike")
        return up.contains("NIKE") || up.contains("PEGASUS");
      return true;
    }).toList();

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Sneaker Shop",
            style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () => Navigator.pushNamed(context, '/cart_page'),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Category slider (chips)
            SizedBox(
              height: 64,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (c, i) => _buildCategoryChip(categories[i]),
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemCount: categories.length,
              ),
            ),
            const SizedBox(height: 10),

            // Grid of shoes
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  padding: const EdgeInsets.only(top: 8, bottom: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                    childAspectRatio: 0.68,
                  ),
                  itemCount: filteredShoes.length,
                  itemBuilder: (context, index) {
                    final shoe = filteredShoes[index];
                    return _ShoeCard(
                      shoe: shoe,
                      onTap: () => _openShoeDetail(context, shoe),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String category) {
    final isSelected = selectedCategory == category;
    return ChoiceChip(
      label: Text(category),
      selected: isSelected,
      onSelected: (_) => setState(() => selectedCategory = category),
      selectedColor: Colors.black,
      backgroundColor: Colors.white,
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black87,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      elevation: 2,
    );
  }

  // showModalBottomSheet that requires size selection and prevents overflow
  void _openShoeDetail(BuildContext context, Shoe shoe) {
    // We'll use a local variable here so StatefulBuilder can mutate it
    double? selectedSize;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // allows larger height & keyboard safe area
      backgroundColor:
          Colors.transparent, // so we can draw our rounded container
      builder: (sheetContext) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.55,
          minChildSize: 0.32,
          maxChildSize: 0.95,
          builder: (context, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: SingleChildScrollView(
                controller: scrollController,
                child: StatefulBuilder(builder: (context, setState) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // drag handle
                      Container(
                        width: 60,
                        height: 4,
                        margin: const EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),

                      // Hero image
                      Hero(
                        tag: shoe.name,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            shoe.imagePath,
                            height: 160,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Title & price
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(shoe.name,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(height: 6),
                                Text(shoe.description,
                                    style: TextStyle(color: Colors.grey[700])),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text("\$${shoe.price.toStringAsFixed(0)}",
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),

                      const SizedBox(height: 16),

                      // Sizes title
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Select size",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[800])),
                      ),
                      const SizedBox(height: 10),

                      // Sizes chips with horizontal scroll if many
                      SizedBox(
                        height: 44,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, i) {
                            final s = shoe.size[i];
                            final isSel = selectedSize == s;
                            return ChoiceChip(
                              label: Text(s.toString()),
                              selected: isSel,
                              onSelected: (_) =>
                                  setState(() => selectedSize = s),
                              selectedColor: Colors.black,
                              backgroundColor: Colors.grey[100],
                              labelStyle: TextStyle(
                                  color: isSel ? Colors.white : Colors.black87),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                            );
                          },
                          separatorBuilder: (_, __) => const SizedBox(width: 8),
                          itemCount: shoe.size.length,
                        ),
                      ),

                      const SizedBox(height: 22),

                      // Add to cart button - disabled until size selected
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: selectedSize == null
                                  ? null
                                  : () {
                                      // use provider to add with selected size
                                      Provider.of<Cart>(context, listen: false)
                                          .addItemToCart(shoe, selectedSize!);
                                      Navigator.of(context)
                                          .pop(); // close sheet
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                '${shoe.name} (size ${selectedSize.toString()}) added to cart')),
                                      );
                                    },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                disabledBackgroundColor: Colors.grey.shade300,
                              ),
                              child: Text(
                                selectedSize == null
                                    ? 'Select a size'
                                    : 'Add size ${selectedSize.toString()} to cart',
                                style: TextStyle(
                                    color: selectedSize == null
                                        ? Colors.grey[700]
                                        : Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),
                    ],
                  );
                }),
              ),
            );
          },
        );
      },
    );
  }
}

// A small presentational card widget for each shoe.
// Keeps ShopPage tidy.
class _ShoeCard extends StatelessWidget {
  final Shoe shoe;
  final VoidCallback onTap;
  const _ShoeCard({required this.shoe, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 4))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Hero(
                tag: shoe.name,
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.asset(shoe.imagePath, fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(shoe.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  Text("\$${shoe.price.toStringAsFixed(0)}",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
