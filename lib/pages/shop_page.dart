import 'package:ecommarce_app/components/shoe_tile.dart';
import 'package:ecommarce_app/models/cart.dart';
import 'package:ecommarce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addShoe(shoe);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("Added to cart"),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Ok"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) => Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.white70,
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                suffixIcon: Icon(Icons.search),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 30),
              child: Text(
                'Everyone flies, some fly longer than others',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Hot Picks 🔥",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              Text("See All",
                  style: TextStyle(fontSize: 16, color: Colors.blue)),
            ]),
            SizedBox(height: 20),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cart.getShoeList().length,
                    itemBuilder: (context, index) {
                      List<Shoe> shoe = cart.getShoeList();
                      return ShoeTile(
                        shoe: shoe[index],
                        onTap: () {
                          addShoeToCart(shoe[index]);
                        },
                      );
                    })),
            SizedBox(height: 7),
            Divider(
              color: Colors.white,
            ),
          ])),
    );
  }
}
