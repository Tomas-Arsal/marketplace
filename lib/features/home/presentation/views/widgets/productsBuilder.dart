import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../categorie/data/models/categories_model.dart';
import '../../../data/models/home_model.dart';
import 'CarouselSlider.dart';
import 'listOfCategorie.dart';
import 'newProducts.dart';

Widget productsBuilder(
        HomeModel model, CategoriesModel categoriesModel, context) =>
    SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          carouselSlidering(model),
          const SizedBox(height: 15),
          listOfCategorie(categoriesModel),
          const SizedBox(height: 15),
          newProducts(model, context)
        ],
      ),
    );
