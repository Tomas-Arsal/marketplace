import 'package:flutter/material.dart';

Widget listIsEmpty (){
  return     const Padding(
    padding: EdgeInsetsDirectional.only(top: 150),
    child: Column(
      children: [
        Center(
            child: Icon(
              Icons.favorite_border_outlined,
              size: 200,
              color: Colors.grey,
            )),
        Text("Your favorite is empty",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
      ],
    ),
  );
}