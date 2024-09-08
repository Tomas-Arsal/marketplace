import 'package:flutter/material.dart';

void navigateAndFinished(context, Widget) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => Widget),
          (Route<dynamic> route) => false);
}
