// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo

                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Image(
                    image: AssetImage('lib/images/logo.png'),
                    width: 300,
                  ),
                ),
                //
                Text(
                  "Just Do It",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Brand new sneakers and custom kicks made with premium quality",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(134, 0, 0, 0)),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'homePage');
                    },
                    child: Text('Shop Now'),
                    color: Colors.black,
                    textColor: Colors.white,
                    minWidth: double.infinity,
                    height: 70,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
