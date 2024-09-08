import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/custom_loading_indicator.dart';
import 'buildOfConditionalBuilder.dart';

Widget bodyOfCategorieScreen(cubit, deviceSize, textContext) {
  return Scaffold(
    //drawer: const MyDrawer(),
    body: ConditionalBuilder(
      condition: cubit.categoriesModel != null,
      builder: (_) => buildOfConditionalBuilder(cubit, deviceSize, textContext),
      fallback: (context) => const CustomLoadingIndicator(),
    ),
  );
}
