import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/features/cart/presentation/views/widgets/listOfCart.dart';
import 'package:marketplace/features/cart/presentation/views/widgets/resultOFallback.dart';

import '../manger/cart/cart_cubit.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {},
      builder: (context, state) {
        return BuildCondition(
          condition: CartCubit.get(context).cartModel!.data!.total > 0,
          builder: (context) => listOfCart(context, state),
          fallback: (context) => resultOFallback(),
        );
      },
    );
  }
}
