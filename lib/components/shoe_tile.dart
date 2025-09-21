// // import 'package:flutter/material.dart';
// // import '../models/shoe.dart';

// // class ShoeTile extends StatelessWidget {
// //   Shoe shoe;
// //   void Function()? onTap;
// //   ShoeTile({super.key, required this.shoe, required this.onTap});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       margin: EdgeInsets.only(left: 25),
// //       width: 200,
// //       decoration: BoxDecoration(
// //         color: Colors.grey[100],
// //         borderRadius: BorderRadius.circular(12),
// //       ),

// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           // shoe pic
// //           ClipRRect(
// //             borderRadius: BorderRadius.circular(12),
// //             child: Image.asset(shoe.imagePath),
// //           ),

// //           //description
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Text(
// //               shoe.description,
// //               style: TextStyle(color: Colors.grey[600]),
// //             ),
// //           ),

// //           // price + details
// //           Padding(
// //             padding: const EdgeInsets.only(left: 25.0),
// //             child: Row(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     // shoe name
// //                     Text(
// //                       shoe.name,
// //                       style: TextStyle(
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 15,
// //                       ),
// //                     ),

// //                     SizedBox(height: 5),
// //                     // price
// //                     Text(
// //                       '\$${shoe.price}',
// //                       style: TextStyle(
// //                         color: Colors.blueGrey,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 GestureDetector(
// //                   onTap: onTap,
// //                   child: Container(
// //                     padding: EdgeInsets.all(20),
// //                     decoration: BoxDecoration(
// //                       color: Colors.greenAccent,
// //                       borderRadius: BorderRadius.only(
// //                         topLeft: Radius.circular(12),
// //                         bottomRight: Radius.circular(12),
// //                       ),
// //                     ),
// //                     child: Icon(Icons.add, color: Colors.white),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),

// //           // button to addd to cart
// //         ],
// //       ),
// //     );
// //   }
// // }
// // lib/components/shoe_tile.dart
// // import 'package:flutter/material.dart';
// // import 'package:cached_network_image/cached_network_image.dart';
// // import '../models/shoe.dart';

// // class ShoeTile extends StatelessWidget {
// //   final Shoe shoe;
// //   final void Function()? onTap;
// //   const ShoeTile({super.key, required this.shoe, required this.onTap});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       margin: EdgeInsets.only(left: 25, top: 10, bottom: 10),
// //       width: 200,
// //       decoration: BoxDecoration(
// //         color: Colors.grey[100],
// //         borderRadius: BorderRadius.circular(12),
// //       ),
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           ClipRRect(
// //             borderRadius: BorderRadius.circular(12),
// //             child: CachedNetworkImage(
// //               imageUrl: shoe.imageUrl,
// //               placeholder: (c, u) => SizedBox(
// //                 height: 120,
// //                 child: Center(child: CircularProgressIndicator()),
// //               ),
// //               errorWidget: (c, u, e) => Icon(Icons.error),
// //               fit: BoxFit.cover,
// //               height: 160,
// //               width: double.infinity,
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Text(
// //               shoe.description,
// //               style: TextStyle(color: Colors.grey[600]),
// //               maxLines: 2,
// //               overflow: TextOverflow.ellipsis,
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(shoe.name,
// //                         style: TextStyle(
// //                             fontWeight: FontWeight.bold, fontSize: 15)),
// //                     SizedBox(height: 5),
// //                     Text("\$${shoe.price}",
// //                         style: TextStyle(
// //                             color: Colors.blueGrey,
// //                             fontWeight: FontWeight.bold)),
// //                   ],
// //                 ),
// //                 GestureDetector(
// //                   onTap: onTap,
// //                   child: Container(
// //                     padding: EdgeInsets.all(12),
// //                     decoration: BoxDecoration(
// //                       color: Colors.greenAccent,
// //                       borderRadius: BorderRadius.only(
// //                         topLeft: Radius.circular(12),
// //                         bottomRight: Radius.circular(12),
// //                       ),
// //                     ),
// //                     child: Icon(Icons.add, color: Colors.white),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// // import 'package:flutter/material.dart';
// // import '../models/shoe.dart';

// // class ShoeTile extends StatelessWidget {
// //   final Shoe shoe;
// //   final VoidCallback onTap;

// //   const ShoeTile({super.key, required this.shoe, required this.onTap});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       margin: const EdgeInsets.only(right: 16),
// //       width: 180,
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(16),
// //         boxShadow: [
// //           BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
// //         ],
// //       ),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           ClipRRect(
// //             borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
// //             child: Image.asset(
// //               shoe.imagePath,
// //               fit: BoxFit.cover,
// //               height: 150,
// //               width: double.infinity,
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Text(shoe.name,
// //                 style:
// //                     const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 8.0),
// //             child: Text(shoe.description,
// //                 style: const TextStyle(fontSize: 12, color: Colors.grey)),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 Text("\$${shoe.price}",
// //                     style: const TextStyle(
// //                         fontWeight: FontWeight.bold, color: Colors.blueGrey)),
// //                 GestureDetector(
// //                   onTap: onTap,
// //                   child: CircleAvatar(
// //                     backgroundColor: Colors.blueGrey,
// //                     child: const Icon(Icons.add, color: Colors.white),
// //                   ),
// //                 )
// //               ],
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import '../models/shoe.dart';

// // class ShoeTile extends StatelessWidget {
// //   final Shoe shoe;
// //   final VoidCallback onTap;

// //   const ShoeTile({super.key, required this.shoe, required this.onTap});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       margin: const EdgeInsets.only(right: 16),
// //       width: 180,
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(16),
// //         boxShadow: [
// //           BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
// //         ],
// //       ),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           // ✅ FIX: Image fills container with no blank space
// //           ClipRRect(
// //             borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
// //             child: AspectRatio(
// //               aspectRatio: 1, // makes it a perfect square for consistency
// //               child: Image.asset(
// //                 shoe.imagePath,
// //                 fit: BoxFit
// //                     .contain, // contain = no white space, fits within the area
// //               ),
// //             ),
// //           ),

// //           // Shoe name
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Text(
// //               shoe.name,
// //               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// //               maxLines: 1,
// //               overflow: TextOverflow.ellipsis,
// //             ),
// //           ),

// //           // Description
// //           Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 8.0),
// //             child: Text(
// //               shoe.description,
// //               style: const TextStyle(fontSize: 12, color: Colors.grey),
// //               maxLines: 1,
// //               overflow: TextOverflow.ellipsis,
// //             ),
// //           ),

// //           // Price + Add Button
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 Text(
// //                   "\$${shoe.price}",
// //                   style: const TextStyle(
// //                       fontWeight: FontWeight.bold, color: Colors.blueGrey),
// //                 ),
// //                 GestureDetector(
// //                   onTap: onTap,
// //                   child: CircleAvatar(
// //                     backgroundColor: Colors.blueGrey,
// //                     child: const Icon(Icons.add, color: Colors.white),
// //                   ),
// //                 )
// //               ],
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import '../models/shoe.dart';

// class ShoeTile extends StatelessWidget {
//   final Shoe shoe;
//   final VoidCallback onTap;

//   const ShoeTile({super.key, required this.shoe, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(right: 16),
//       width: 180,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // ✅ Full-height image container (no white space)
//           Expanded(
//             child: ClipRRect(
//               borderRadius:
//                   const BorderRadius.vertical(top: Radius.circular(16)),
//               child: Image.asset(
//                 shoe.imagePath,
//                 fit: BoxFit.cover, // fills completely, no white gap
//                 width: double.infinity,
//               ),
//             ),
//           ),

//           // Shoe name
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//             child: Text(
//               shoe.name.toUpperCase(),
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),

//           // Description
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8),
//             child: Text(
//               shoe.description,
//               style: const TextStyle(fontSize: 12, color: Colors.grey),
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),

//           // Price + Add Button
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "\$${shoe.price}",
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.blueGrey),
//                 ),
//                 GestureDetector(
//                   onTap: onTap,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.blueGrey,
//                     radius: 16,
//                     child: const Icon(Icons.add, color: Colors.white, size: 18),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:sneaker_shop/models/cart.dart';
// import '../models/shoe.dart';

// class ShoeTile extends StatelessWidget {
//   final Shoe shoe;
//   final VoidCallback onTap;

//  ShoeTile({super.key, required this.shoe, required this.onTap});
//   final shoes = context.watch<Cart>().getShoeList();
  
//   static get context => null;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(right: 16),
//       width: 180,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // 🔑 Image takes all available height but keeps full shoe visible
//           Expanded(
//             child: Container(
//               padding: const EdgeInsets.all(
//                   8), // optional: add a little breathing space
//               child: ClipRRect(
//                 borderRadius:
//                     const BorderRadius.vertical(top: Radius.circular(16)),
//                 child: Image.asset(
//                   shoe.imagePath,
//                   fit: BoxFit.contain, // 👈 fits entire image inside
//                   width: double.infinity,
//                 ),
//               ),
//             ),
//           ),

//           // Shoe name
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//             child: Text(
//               shoe.name.toUpperCase(),
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),

//           // Description
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8),
//             child: Text(
//               shoe.description,
//               style: const TextStyle(fontSize: 12, color: Colors.grey),
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),

//           // Price + Add Button
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "\$${shoe.price}",
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.blueGrey),
//                 ),
//                 GestureDetector(
//                   onTap: onTap,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.blueGrey,
//                     radius: 16,
//                     child: const Icon(Icons.add, color: Colors.white, size: 18),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../models/shoe.dart';


class ShoeTile extends StatelessWidget {
final Shoe shoe;
final VoidCallback onAdd;


const ShoeTile({super.key, required this.shoe, required this.onAdd});


@override
Widget build(BuildContext context) {
return Container(
width: 180,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(16),
boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))],
),
child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  shoe.imagePath,
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(
              shoe.name.toUpperCase(),
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              shoe.description,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${shoe.price}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blueGrey),
                ),
                GestureDetector(
                  onTap: onAdd,
                  child: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    radius: 16,
                    child: const Icon(Icons.add, color: Colors.white, size: 18),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
