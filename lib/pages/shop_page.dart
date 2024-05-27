import 'package:ecommarce_app/components/shoe_tile.dart';
import 'package:ecommarce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
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
            Text("See All", style: TextStyle(fontSize: 16, color: Colors.blue)),
          ]),
          SizedBox(height: 20),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shoe.length,
                  itemBuilder: (context, index) {
                    return ShoeTile(shoe: shoe[index]);
                  })),
          SizedBox(height: 7),
          Divider(
            color: Colors.white,
          ),
        ]));
  }
}

List<Shoe> shoe = [
  Shoe(
      name: "Air Jordan",
      imagePath: "lib/images/1.png",
      description: "The Forward-thinking design of his latest signature shoe.",
      price: "200"),
  Shoe(
      name: "Air Jordan",
      imagePath: "lib/images/2.png",
      description: "The Forward-thinking design of his latest signature shoe.",
      price: "200"),
  Shoe(
      name: "Air Jordan",
      imagePath: "lib/images/3.png",
      description: "The Forward-thinking design of his latest signature shoe.",
      price: "200"),
  Shoe(
      name: "Air Jordan",
      imagePath: "lib/images/4.png",
      description: "The Forward-thinking design of his latest signature shoe.",
      price: "200"),
];
