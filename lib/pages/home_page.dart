// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommarce_app/components/bottom_nav_bar.dart';
import 'package:ecommarce_app/pages/cart_page.dart';
import 'package:ecommarce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to controol bottom nav bar
  int _selectedIndex = 0;

  // this method will update our selected index / 0 for home and 1 for cart
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final ListPage = [
    ShopPage(),
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) {
          navigateBottomBar(index);
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(children: [
          DrawerHeader(
              child: Image.asset(
            'lib/images/logo.png',
            color: Colors.white,
          )),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.white,
            ),
            title: Text(
              'About',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              'Logout',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]),
      ),
      body: ListPage[_selectedIndex],
    );
  }
}
