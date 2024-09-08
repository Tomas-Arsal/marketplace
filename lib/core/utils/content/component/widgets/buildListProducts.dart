import 'package:flutter/material.dart';

import '../../../../../features/favorite/presentation/manger/favorite/favorite_cubit.dart';
import '../../../../../features/shopLayout/presentation/manger/shopLayout/cubit.dart';
import '../../../widgets/styles/my_main.dart';

Widget buildListProducts(model, context, {bool isOldPrice = true}) => Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image(
          image: NetworkImage(model.image),
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        if (model.discount != 0 && isOldPrice)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              color: MyMainColors.myRed,
              child: const Text(
                'DISTANT',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.0,
                ),
              ),
            ),
          ),
      ],
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 14.0,
                      height: 1.4,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Material(
                      child: Text(
                        model.price.toString(),
                        style: const TextStyle(
                            fontSize: 10.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    if (model.discount != 0 && isOldPrice)
                      Material(
                        child: Text(
                          model.oldPrice.toString(),
                          style: const TextStyle(
                              fontSize: 10.0, color: Colors.red),
                        ),
                      ),
                    const Spacer(),
                    Material(
                        color: MyMainColors.myWhite,
                        child: IconButton(
                          icon: const Icon(Icons.favorite),
                          onPressed: () {
                            FavoriteCubit.get(context).changeFavoritesData(productId: model.id );
                          }
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ],
);