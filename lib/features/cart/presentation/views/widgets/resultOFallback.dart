import 'package:flutter/material.dart';

Widget resultOFallback() {
  return const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
          child: Icon(
        Icons.shopping_cart,
        size: 200,
        color: Colors.grey,
      )),
      Text("Your cart is empty",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
    ],
  );
}
