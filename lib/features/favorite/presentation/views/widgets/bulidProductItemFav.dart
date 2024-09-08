import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/bulidProductsItem.dart';
import '../../../../shopLayout/presentation/manger/shopLayout/cubit.dart';
import '../../manger/favorite/favorite_cubit.dart';

Widget bulidProductItemFav (context){
  return  ListView.separated(
    itemBuilder: (context, index) => bulidProductsItem(
        FavoriteCubit.get(context)
            .favoritesModell!
            .data!
            .data![index]
            .product!,
        context),
    separatorBuilder: (context, index) => const Divider(),
    itemCount: FavoriteCubit.get(context)
        .favoritesModell!
        .data!
        .data!
        .length,
  );
}