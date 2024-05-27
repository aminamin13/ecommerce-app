import 'package:ecommarce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class CartItems extends StatefulWidget {
  CartItems({super.key, required this.shoe, required this.onPressed});

  Shoe shoe;

  void Function()? onPressed;
  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(widget.shoe.name),
        leading: Image(
          image: AssetImage(widget.shoe.imagePath),
        ),
        subtitle: Text(widget.shoe.price.toString()),
        trailing: IconButton(
          onPressed: () {
            widget.onPressed!();
          },
          icon: Icon(Icons.delete),
        ),
      ),
    );
    ;
  }
}
