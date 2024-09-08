
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButtom({
  required background,
  required Width,
  double radious = 10.0,
  required VoidCallback function,
  required String text,
}) =>
    Container(
      width: Width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radious),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );