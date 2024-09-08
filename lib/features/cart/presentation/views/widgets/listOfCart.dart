import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/features/cart/presentation/views/widgets/priceOfCarts.dart';
import '../../../../../core/utils/widgets/custom_loading_indicator.dart';
import '../../manger/cart/cart_cubit.dart';
import 'bulidProductsItemCart.dart';

Widget listOfCart(context, state) {
  return Column(
    children: [
      priceOfCarts(context),
      BuildCondition(
        condition: CartCubit.get(context).cartModel != null ,
        builder: (context) =>
            bulidProductItemCart(context),
        fallback: (context) => const CustomLoadingIndicator(),
      ),
    ],
  );
}
