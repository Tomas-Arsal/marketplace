import 'package:flutter/material.dart';

Widget textButtom({
  required String text,
  required function,
}) =>
    TextButton(
        onPressed: function,
        child: Text(
          text.toUpperCase(),
        ));