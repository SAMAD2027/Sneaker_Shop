// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../models/cart.dart';
// import '../models/shoe.dart';

// // ignore: must_be_immutable
// class CartItem extends StatefulWidget {
//   Shoe shoe;
//   CartItem({super.key, required this.shoe});

//   @override
//   State<CartItem> createState() => _CartItemState();
// }

// class _CartItemState extends State<CartItem> {
//   // remove item from cart
//   void removeItemFromCart() {
//     Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
//   }

//   void payForItem() {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text("Payment started for ${widget.shoe.name}")),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey[100],
//         borderRadius: BorderRadius.circular(10),
//       ),
//       margin: EdgeInsets.only(bottom: 10),
//       child: ListTile(
//         leading: Image.asset(widget.shoe.imagePath),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             IconButton(
//               onPressed: removeItemFromCart,
//               icon: Icon(Icons.delete, color: Colors.red),
//             ),
//             ElevatedButton(
//               onPressed: payForItem,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blueGrey,
//                 padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               child: Text("Pay", style: TextStyle(color: Colors.white)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../models/shoe.dart';

// class CartItem extends StatefulWidget {
//   Shoe shoe;
//   CartItem({super.key, required this.shoe});

//   @override
//   State<CartItem> createState() => _CartItemState();
// }

// class _CartItemState extends State<CartItem> {
//   // remove item from cart
//   void removeItemFromCart() {
//     Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey[100],
//         borderRadius: BorderRadius.circular(10),
//       ),
//       margin: EdgeInsets.only(bottom: 10),
//       child: ListTile(
//         leading: Image.asset(widget.shoe.imagePath),
//         title: Text(widget.shoe.name),
//         subtitle: Text(widget.shoe.price),
//         trailing: IconButton(
//           onPressed: removeItemFromCart,
//           icon: Icon(Icons.delete),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../models/cart.dart';
// import '../models/shoe.dart';

// class CartItem extends StatefulWidget {
//   final Shoe shoe;

//   const CartItem({super.key, required this.shoe});

//   @override
//   State<CartItem> createState() => _CartItemState();
// }

// class _CartItemState extends State<CartItem> {
//   /// ✅ Remove item from cart
//   void removeItemFromCart() {
//     Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text("${widget.shoe.name} removed from cart")),
//     );
//   }

//   /// ✅ Pay for item
//   void payForItem() {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text("Payment started for ${widget.shoe.name}")),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey[100],
//         borderRadius: BorderRadius.circular(10),
//       ),
//       margin: const EdgeInsets.only(bottom: 10),
//       child: ListTile(
//         // leading: Image.network(widget.shoe.imageUrl), // if you want image
//         title: Text(widget.shoe.name),
//         subtitle: Text("\$${widget.shoe.price}"),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             IconButton(
//               onPressed: removeItemFromCart,
//               icon: const Icon(Icons.delete, color: Colors.red),
//             ),
//             ElevatedButton(
//               onPressed: payForItem,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blueGrey,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               child: const Text(
//                 "Pay",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CartItemWidget extends StatelessWidget {
  final CartItemModel item;
  const CartItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(item.shoe.imagePath, width: 72, height: 72),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.shoe.name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text('Size: ${item.size}'),
                const SizedBox(height: 8),
                Text('\$${item.shoe.price.toStringAsFixed(2)}',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Column(
            children: [
              IconButton(
                onPressed: () => Provider.of<Cart>(context, listen: false)
                    .removeItemFromCart(item),
                icon: const Icon(Icons.delete, color: Colors.red),
              ),
              const SizedBox(height: 4),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Payment started for ${item.shoe.name}')));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text('Pay', style: TextStyle(color: Colors.white)),
              )
            ],
          )
        ],
      ),
    );
  }
}
