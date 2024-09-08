import 'package:flutter/material.dart';
import 'package:marketplace/core/utils/content/component/widgets/productImage.dart';

import '../../../../../features/home/presentation/views/widgets/iconButtomOfCart.dart';
import '../../../../../features/home/presentation/views/widgets/iconButtomOfFav.dart';

Widget bulidProductsItem(model, context, {bool isOldPrice = true}) => Container(
      margin: const EdgeInsets.all(20),
      height: 120,
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              productImage(
                imageUrl: "${model.image}",
              ),
              if (model.discount != 0 && isOldPrice)
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
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${model.name}",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    height: 1.3,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      "${model.price}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        height: 1.3,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 10),
                    if (model.discount != 0 && isOldPrice)
                      Text(
                        "${model.oldPrice}",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          height: 1.3,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                    const Spacer(),
                    iconButtomOfCart(productId: model.id!),
                    iconButtomOfFav(productId: model.id!),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
