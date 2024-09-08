import 'package:flutter/cupertino.dart';
import 'iconOfItem.dart';
import 'imageOfItem.dart';
import 'nameOfItem.dart';

Widget itemBuilder(cubit, deviceSize, index, textContext) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //imageOfItem
        imageOfItem(cubit, index, deviceSize),
        //nameOfItem
        nameOfItem(deviceSize, cubit, index, textContext),
        //iconOfItem
        iconOfItem(textContext),
      ],
    ),
  );
}
