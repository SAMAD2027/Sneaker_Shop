// // // import 'package:flutter/material.dart';
// // // import 'package:provider/provider.dart';
// // // import '../components/cart_item.dart';
// // // import '../models/cart.dart';
// // // import '../models/shoe.dart';

// // // class CartPage extends StatelessWidget {
// // //   const CartPage({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Consumer<Cart>(
// // //       builder: (context, value, child) => Padding(
// // //         padding: const EdgeInsets.symmetric(horizontal: 25),
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             Text(
// // //               'My Cart',
// // //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
// // //             ),

// // //             SizedBox(height: 25),
// // //             Expanded(
// // //               child: ListView.builder(
// // //                 itemCount: value.getUserCart().length,
// // //                 itemBuilder: (context, index) {
// // //                   Shoe individualShoe = value.getUserCart()[index];

// // //                   return CartItem(shoe: individualShoe);
// // //                 },
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import '../models/cart.dart';
// // import '../components/cart_item.dart';

// // class CartPage extends StatelessWidget {
// //   const CartPage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final cart = Provider.of<Cart>(context);

// //     return Scaffold(
// //       // backgroundColor: Colors.white,
// //       appBar: AppBar(title: Text("My Cart")),
// //       body: ListView.builder(
// //         padding: EdgeInsets.all(16),
// //         itemCount: cart.getUserCart().length,
// //         itemBuilder: (context, index) {
// //           return CartItem(shoe: cart.getUserCart()[index]);
// //         },
// //       ),

// //       // ✅ Bottom Bar with Pay Button
// //       bottomNavigationBar: Container(
// //         padding: EdgeInsets.all(16),
// //         decoration: BoxDecoration(
// //           color: Colors.white,
// //           boxShadow: [
// //             BoxShadow(
// //               color: Colors.black12,
// //               blurRadius: 6,
// //               offset: Offset(0, -2),
// //             ),
// //           ],
// //         ),
// //         child: SafeArea(
// //           child: ElevatedButton(
// //             onPressed: () {
// //               ScaffoldMessenger.of(context).showSnackBar(
// //                 SnackBar(content: Text("Proceeding to payment...")),
// //               );
// //             },
// //             style: ElevatedButton.styleFrom(
// //               backgroundColor: Colors.blueGrey,
// //               padding: EdgeInsets.symmetric(vertical: 16),
// //               shape: RoundedRectangleBorder(
// //                 borderRadius: BorderRadius.circular(14),
// //               ),
// //             ),
// //             child: Text(
// //               "Pay Now",
// //               style: TextStyle(
// //                 color: Colors.white,
// //                 fontSize: 16,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../models/cart.dart';
// import '../components/cart_item.dart';

// class CartPage extends StatelessWidget {
//   const CartPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<Cart>(context);

//     return Scaffold(
//       appBar: AppBar(title: const Text("My Cart")),
//       body: cart.getUserCart().isEmpty
//           ? const Center(child: Text("Your cart is empty"))
//           : Column(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: cart.getUserCart().length,
//                     itemBuilder: (context, index) {
//                       return CartItem(shoe: cart.getUserCart()[index]);
//                     },
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.all(16),
//                   decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                     BoxShadow(
//                         color: Colors.black12,
//                         blurRadius: 4,
//                         offset: Offset(0, -2))
//                   ]),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Total: \$${cart.totalPrice.toStringAsFixed(2)}",
//                           style: const TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold)),
//                       ElevatedButton(
//                         onPressed: () {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                   content: Text("Proceeding to payment...")));
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.blueGrey,
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 24, vertical: 12),
//                         ),
//                         child: const Text("Pay Now",
//                             style: TextStyle(color: Colors.white)),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../models/cart.dart';
// import '../components/cart_item.dart';

// class CartPage extends StatelessWidget {
//   const CartPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<Cart>(context);
//     return Scaffold(
//       appBar: AppBar(title: const Text("My Cart")),
//       body: cart.getUserCart().isEmpty
//           ? const Center(child: Text("Your cart is empty"))
//           : Column(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: cart.getUserCart().length,
//                     itemBuilder: (context, index) {
//                       final item = cart.getUserCart()[index];
//                       return CartItemWidget(item: item);
//                     },
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.all(16),
//                   decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                     BoxShadow(
//                         color: Colors.black12,
//                         blurRadius: 4,
//                         offset: Offset(0, -2))
//                   ]),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Total: \$${cart.totalPrice.toStringAsFixed(2)}",
//                           style: const TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold)),
//                       ElevatedButton(
//                         onPressed: () {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                   content: Text("Proceeding to payment...")));
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.blueGrey,
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 24, vertical: 12),
//                         ),
//                         child: const Text("Pay Now",
//                             style: TextStyle(color: Colors.white)),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../components/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "My Cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
      ),
      body: cart.getUserCart().isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined,
                      size: 80, color: Colors.grey[400]),
                  const SizedBox(height: 16),
                  Text(
                    "Your cart is empty",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemCount: cart.getUserCart().length,
                    itemBuilder: (context, index) {
                      final item = cart.getUserCart()[index];
                      return CartItemWidget(item: item);
                    },
                    separatorBuilder: (_, __) =>
                        const Divider(height: 1, thickness: 0.5),
                  ),
                ),

                // Sticky bottom checkout section
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: const Offset(0, -2),
                      )
                    ],
                  ),
                  child: SafeArea(
                    top: false,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Total Price with bold style
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "\$${cart.totalPrice.toStringAsFixed(2)}",
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        // Pay Button
                        ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Proceeding to payment..."),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 16,
                            ),
                          ),
                          child: const Text(
                            "Checkout",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
