import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

Widget imageOfItem(cubit, index, deviceSize) {
  return CachedNetworkImage(
    imageUrl: cubit.categoriesModel!.data.data[index].image!,
    errorWidget: (context, s, _) => Image.asset('assets/images/imageError.png'),
    placeholder: (context, _) => Image.asset('assets/images/loading.gif'),
    fit: BoxFit.cover,
    width: deviceSize.width * 0.4,
    height: deviceSize.height * 0.2,
  );
}
