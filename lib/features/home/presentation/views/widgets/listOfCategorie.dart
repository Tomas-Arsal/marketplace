import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/widgets/Styles.dart';
import '../../../../../core/utils/widgets/app_string.dart';
import 'bulidCategorieItem.dart';

 listOfCategorie(categoriesModel){return             Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        AppString.categories,
        style: Styles.textStyle30
      ),
      Container(
        height: 100,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => bulidCategorieItem(
              categoriesModel.data.data[index], context),
          separatorBuilder: (context, index) =>
          const SizedBox(width: 10),
          itemCount: categoriesModel.data.data.length,
        ),
      ),
      const Text(
        AppString.newProducts,
        style: Styles.textStyle30
      ),
    ],
  ),
);}