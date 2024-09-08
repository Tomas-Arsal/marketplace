import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/features/home/presentation/views/widgets/productsBuilder.dart';
import '../../../../../core/utils/widgets/custom_loading_indicator.dart';
import '../../../../categorie/presentation/manger/categorie_cubit.dart';
import '../../../../shopLayout/presentation/manger/shopLayout/cubit.dart';
import '../../manger/home_cubit.dart';

Widget buildConditionproductsBuilder (context){return BuildCondition(
  condition: HomeCubit.get(context).homeModel != null &&
      CategorieCubit.get(context).categoriesModel != null,
  builder: (context) => productsBuilder(
      HomeCubit.get(context).homeModel!,
      CategorieCubit.get(context).categoriesModel!,
      context),
  fallback: (context) =>
  const CustomLoadingIndicator(),
);}