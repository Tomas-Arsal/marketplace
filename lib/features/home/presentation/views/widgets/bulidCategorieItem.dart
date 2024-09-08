import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/productImage.dart';
import '../../../../categorie/data/models/categories_model.dart';

Widget bulidCategorieItem(DataModel model, context) => Stack(
  alignment: AlignmentDirectional.bottomCenter,
  children: [
    productImage(
      imageUrl: "${model.image}",
      height: 100,
      width: 100,
    ),
    /*Image(
            image: NetworkImage("${model.image}"),
            height: 100,
            width: 100,
            // fit: BoxFit.cover,
          ),*/
    Container(
      color: Colors.blue.withOpacity(0.8),
      width: 100,
      child: Text(
        "${model.name}",
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ],
);