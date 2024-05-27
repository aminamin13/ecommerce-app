import 'package:ecommarce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Jordan 1",
        imagePath: "lib/images/1.png",
        description:
            "The Forward-thinking design of his latest signature shoe.",
        price: "290"),
    Shoe(
        name: "Air Jordan 2",
        imagePath: "lib/images/2.png",
        description:
            "The Forward-thinking design of his latest signature shoe.",
        price: "270"),
    Shoe(
        name: "Air Jordan 3",
        imagePath: "lib/images/3.png",
        description:
            "The Forward-thinking design of his latest signature shoe.",
        price: "260"),
    Shoe(
        name: "Air Jordan 4",
        imagePath: "lib/images/4.png",
        description:
            "The Forward-thinking design of his latest signature shoe.",
        price: "250"),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getCart() {
    return userCart;
  }

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  void addShoe(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeShoe(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
