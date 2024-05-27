import 'package:ecommarce_app/pages/cart_page.dart';
import 'package:ecommarce_app/pages/home_page.dart';
import 'package:ecommarce_app/pages/intro_page.dart';
import 'package:ecommarce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        'introPage': (context) => const IntroPage(),

        'homePage': (context) => const HomePage(),
        'cartPage': (context) => const CartPage(),
        'shopPage': (context) => const ShopPage(),
      },
    );
  }
}
