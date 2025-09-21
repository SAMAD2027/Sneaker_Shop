// import 'package:flutter/material.dart';
// import 'package:sneaker_shop/pages/home_page.dart';

// class IntroPage extends StatelessWidget {
//   const IntroPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 25.0),

//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               //logo
//               Padding(
//                 padding: const EdgeInsets.all(25.0),
//                 child: Image.asset('lib/images/nike.png', height: 240),
//               ),
//               const SizedBox(height: 48),
//               const Text(
//                 'Just Do It',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 24),
//               const Text(
//                 'Brand new sneakers and custom kicks made with premimum quality ',
//                 style: TextStyle(fontSize: 16, color: Colors.grey),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 48),
//               GestureDetector(
//                 onTap: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => HomePage()),
//                 ),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey[900],
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   padding: EdgeInsets.all(25),
//                   child: Center(
//                     child: Text(
//                       "Shop Now",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:sneaker_shop/pages/home_page.dart';

// class IntroPage extends StatelessWidget {
//   const IntroPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 25.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(25.0),
//                 child: Image.asset('lib/images/nike.png', height: 240),
//               ),
//               const SizedBox(height: 48),
//               const Text(
//                 'Just Do It',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 24),
//               const Text(
//                 'Brand new sneakers and custom kicks made with premium quality',
//                 style: TextStyle(fontSize: 16, color: Colors.grey),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 48),
//               GestureDetector(
//                 onTap: () => Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => const HomePage()),
//                 ),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey[900],
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   padding: const EdgeInsets.all(25),
//                   child: const Center(
//                     child: Text(
//                       "Shop Now",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:sneaker_shop/pages/home_page.dart';

// class IntroPage extends StatelessWidget {
//   const IntroPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         // Smooth gradient background
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.white, Color(0xFFF2F2F2)],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: SafeArea(
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Logo with subtle fade/scale animation
//                   TweenAnimationBuilder(
//                     duration: const Duration(milliseconds: 800),
//                     curve: Curves.easeOutBack,
//                     tween: Tween<double>(begin: 0.8, end: 1.0),
//                     builder: (context, value, child) => Transform.scale(
//                       scale: value,
//                       child: child,
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(25.0),
//                       child: Image.asset('lib/images/nike.png', height: 240),
//                     ),
//                   ),
//                   const SizedBox(height: 48),

//                   // Big bold headline (Nike vibe)
//                   const Text(
//                     'JUST DO IT',
//                     style: TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.w900,
//                       letterSpacing: 2,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(height: 16),

//                   // Subtitle with softer tone
//                   Text(
//                     'Brand new sneakers and custom kicks made with premium quality',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.grey[700],
//                       height: 1.4,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(height: 60),

//                   // "Shop Now" button with elevation and ripple
//                   GestureDetector(
//                     onTap: () => Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) => const HomePage()),
//                     ),
//                     child: AnimatedContainer(
//                       duration: const Duration(milliseconds: 300),
//                       curve: Curves.easeOut,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(16),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.25),
//                             blurRadius: 12,
//                             offset: const Offset(0, 6),
//                           ),
//                         ],
//                       ),
//                       padding: const EdgeInsets.symmetric(vertical: 20),
//                       child: const Center(
//                         child: Text(
//                           "SHOP NOW",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 1.5,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();

    // Auto navigate to HomePage after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 600),
            pageBuilder: (_, __, ___) => const HomePage(),
            transitionsBuilder: (_, animation, __, child) {
              final offsetAnimation = Tween<Offset>(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: animation,
                curve: Curves.easeOutCubic,
              ));
              return SlideTransition(position: offsetAnimation, child: child);
            },
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Nike Logo with subtle fade-in animation
                AnimatedOpacity(
                  opacity: 1,
                  duration: const Duration(milliseconds: 800),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Image.asset('lib/images/nike.png', height: 240),
                  ),
                ),
                const SizedBox(height: 40),

                const Text(
                  'JUST DO IT',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),

                const Text(
                  'Premium sneakers and custom kicks made just for you',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),

                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          blurRadius: 12,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 40),
                    child: const Text(
                      "Shop Now",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
