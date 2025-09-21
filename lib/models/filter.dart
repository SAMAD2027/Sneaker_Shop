import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart.dart';

class ShoeShopScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ShoeShopScreenState createState() => _ShoeShopScreenState();
}

class _ShoeShopScreenState extends State<ShoeShopScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> categories = ["Air Force", "Air Jordan", "Nike"];
  late final Cart cart;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categories.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final shoeList = context.watch<Cart>().getShoeList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Sneaker Shop"),
        bottom: TabBar(
          controller: _tabController,
          tabs: categories.map((cat) => Tab(text: cat)).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: categories.map((category) {
          final filteredShoes =
              shoeList.where((shoe) => shoe.category == category).toList();

          return GridView.builder(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: filteredShoes.length,
            itemBuilder: (context, index) {
              final shoe = filteredShoes[index];
              return GestureDetector(
                onTap: () {
                  // Navigate to details page or add to cart
                },
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(shoe.imagePath, fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(shoe.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            Text("\$${shoe.price}",
                                style: TextStyle(color: Colors.grey[700])),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
