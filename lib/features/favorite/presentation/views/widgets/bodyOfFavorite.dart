import 'package:flutter/cupertino.dart';
import '../../../../shopLayout/presentation/manger/shopLayout/cubit.dart';
import '../../manger/favorite/favorite_cubit.dart';
import 'listIsEmpty.dart';
import 'listIsNotEmpty.dart';

Widget bodyOfFavorite(context, state) {
  return Column(
    children: [
      if (FavoriteCubit.get(context).favoritesModell!.data!.data!.isEmpty)
        listIsEmpty()
      else
        listIsNotEmpty(state),
    ],
  );
}
