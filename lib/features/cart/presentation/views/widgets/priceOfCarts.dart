import 'package:flutter/material.dart';
import '../../../../shopLayout/presentation/manger/shopLayout/cubit.dart';
import '../../manger/cart/cart_cubit.dart';

Widget priceOfCarts (context){return     Padding(
  padding: const EdgeInsetsDirectional.only(end: 30),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      const Text(
        "Total Price",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      Text(
        " ${CartCubit.get(context).cartModel!.data!.total} ",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.blue,
        ),
      ),
      const Text(
        "LE",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    ],
  ),
);}