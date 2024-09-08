import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/widgets/bulidProductsItem.dart';
import '../../../../shopLayout/presentation/manger/shopLayout/cubit.dart';
import '../../manger/cart/cart_cubit.dart';

Widget bulidProductItemCart(context) {
  return Expanded(
    child: ListView.separated(
      itemBuilder: (context, index) => bulidProductsItem(
          CartCubit.get(context).cartModel!.data!.cartItems![index].product!,
          context),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: CartCubit.get(context).cartModel!.data!.cartItems!.length,
    ),
  );
}
