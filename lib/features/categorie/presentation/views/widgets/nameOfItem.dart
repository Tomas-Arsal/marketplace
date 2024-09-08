import 'package:flutter/cupertino.dart';

Widget nameOfItem(deviceSize, cubit, index, textContext) {
  return SizedBox(
    width: deviceSize.width * 0.4,
    child: Text(
      cubit.categoriesModel!.data.data[index].name!,
      style: textContext.titleSmall!.copyWith(
        fontSize: 25.0 ,  ),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    ),
  );
}
