import 'package:ecommarce_app/components/cart_items.dart';
import 'package:ecommarce_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (BuildContext context, Cart cart, Widget? child) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                'Cart Page',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                cart.userCart.length.toString(),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: cart.userCart.length,
                  itemBuilder: (context, index) {
                    return CartItems(
                      shoe: cart.userCart[index],
                      onPressed: () {
                        SetState() {}
                        ;
                        cart.removeShoe(cart.userCart[index]);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
