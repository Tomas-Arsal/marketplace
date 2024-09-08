// تستخدم لتحديد حاله ال TOAST
import 'package:flutter/material.dart';

enum ToastState { SUCCESS, ERROR, WERNING }

Color ToastColorState(ToastState state) {
  Color color;
  switch (state) {
    case ToastState.SUCCESS:
      color = Colors.green;
      break;
    case ToastState.WERNING:
      color = Colors.yellow;
      break;
    case ToastState.ERROR:
      color = Colors.red;
      break;
  }
  return color;
}