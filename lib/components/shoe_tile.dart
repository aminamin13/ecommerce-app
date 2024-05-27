import 'package:ecommarce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShoeTile extends StatelessWidget {
  ShoeTile({super.key, required this.shoe});
  Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 25),
        width: 280,
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            // shoe pic

            Image(
              image: AssetImage(shoe.imagePath),
              height: 250,
              width: 250,
            ),

            // shoe description

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                shoe.description,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),

            // name and price ---> add button
            Spacer(flex: 2),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(shoe.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Text(
                            shoe.price,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ]),
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      child: Icon(Icons.add, color: Colors.white))
                ]),
          ],
        ));
  }
}
