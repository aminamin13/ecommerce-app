// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key, required this.onTabChange});

  void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        tabBackgroundColor: Colors.grey.shade300,
        activeColor: Colors.grey.shade900,
        tabActiveBorder: Border.all(color: Colors.white),
        color: Colors.grey[400],
        tabBorderRadius: 10,
        onTabChange: (value) {
          onTabChange!(value);
        },
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: "Cart",
          ),
        ],
      ),
    );
  }
}
