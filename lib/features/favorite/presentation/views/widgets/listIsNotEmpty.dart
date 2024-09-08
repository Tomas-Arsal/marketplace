import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/widgets/custom_loading_indicator.dart';
import '../../manger/favorite/favorite_cubit.dart';
import 'bulidProductItemFav.dart';

Widget listIsNotEmpty(state) {
  return Expanded(
    child: BuildCondition(
      condition: state is! ShopLoadingGetFavoritesState,
      builder: (context) => bulidProductItemFav(context),
      fallback: (context) => const CustomLoadingIndicator(),
    ),
  );
}
