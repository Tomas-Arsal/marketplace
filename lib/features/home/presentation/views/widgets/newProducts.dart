import 'package:flutter/material.dart';
import 'buildGridProduct.dart';

Widget newProducts (model ,
context){return    Container(
  color: Colors.grey[300],
  child: GridView.count(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    mainAxisSpacing: 1,
    crossAxisSpacing: 1,
    childAspectRatio: 1 / 1.55,
    children: List.generate(
      model.data!.products.length,
          (int index) =>
          buildGridProduct(model.data!.products[index], context),
    ),
  ),
);}