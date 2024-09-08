import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/content/constants.dart';
import '../../../../cart/presentation/manger/cart/cart_cubit.dart';


class iconButtomOfCart extends StatelessWidget {
  final int  productId;

  iconButtomOfCart({Key? key, required this.productId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {},
      builder: (context, state) {
        return    IconButton(
            onPressed: () {
              CartCubit.get(context)
                  .changeCartData(productId: productId);
            },
            icon: CircleAvatar(
              radius: 15,
              backgroundColor:
              cartProducts[productId] ?? false
                  ? Colors.red
                  : Colors.grey,
              child: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ));
      },
    );
  }
}
