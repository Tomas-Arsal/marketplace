import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/widgets/productImage.dart';
import '../../../../../core/utils/content/constants.dart';
import '../../../../cart/presentation/manger/cart/cart_cubit.dart';
import '../../../../shopLayout/presentation/manger/shopLayout/cubit.dart';
import '../../../data/models/home_model.dart';
import 'iconButtomOfCart.dart';
import 'iconButtomOfFav.dart';

Widget buildGridProduct(ProductsModel model, context) => Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              productImage(
                imageUrl: model.image,
                height: 200,
                width: double.infinity,
              ),
              if (model.discount != 0)
                Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.red,
                  child: const Text(
                    "Discount",
                    style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(
                  model.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.3,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "${model.price.round()}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        height: 1.3,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 10),
                    if (model.discount != 0)
                      Text(
                        "${model.oldPrice.round()}",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          height: 1.3,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                    const Spacer(),
                    iconButtomOfCart(productId: model.id!),
                    iconButtomOfFav(productId: model.id!,)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
