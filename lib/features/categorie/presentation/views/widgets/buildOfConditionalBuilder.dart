import 'package:flutter/material.dart';
import 'itemBuilder.dart';

Widget buildOfConditionalBuilder(cubit, deviceSize, textContext) {
  return ListView.separated(
    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
    scrollDirection: Axis.vertical,
    physics: const BouncingScrollPhysics(),
    shrinkWrap: true,
    itemCount: cubit.categoriesModel!.data.data.length,
    separatorBuilder: (ctx, _) => const Divider(
        //  color: isDark ? Colors.grey : Colors.black,
        ),
    itemBuilder: (ctx, index) {
      return itemBuilder(cubit, deviceSize, index, textContext);
    },
  );
}
