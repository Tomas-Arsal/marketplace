import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/bulidProductsItem.dart';
import '../../manger/search/Cubit.dart';

Widget listOfSearch(context) {
  return Expanded(
    child: ListView.separated(
      itemBuilder: (context, index) => bulidProductsItem(
          NewSearchSallaCubit.get(context).model!.data!.data![index], context,
          isOldPrice: false),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: NewSearchSallaCubit.get(context).model!.data!.data!.length,
    ),
  );
}
