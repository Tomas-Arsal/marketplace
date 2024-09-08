import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import 'ToastState.dart';

myToast({
  required BuildContext context,
  required String message,
  required  ToastState state ,
}) =>
    showToast(message,
        textStyle: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.center,
        context: context,
        animation: StyledToastAnimation.scale,
        reverseAnimation: StyledToastAnimation.fade,
        position: StyledToastPosition.bottom,
//const StyledToastPosition(align: Alignment.centerLeft, offset: 50)
        animDuration: const Duration(seconds: 1),
        duration: const Duration(seconds: 4),
        curve: Curves.elasticOut,
        reverseCurve: Curves.linear,
        shapeBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ));