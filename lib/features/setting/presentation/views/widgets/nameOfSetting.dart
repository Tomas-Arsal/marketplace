import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/widgets/defaultTextFormField.dart';
import '../../../../../core/utils/widgets/app_string.dart';

Widget nameOfSearch(cubit) {
  return defaultTextFormField(
    controller: cubit.nameController,
    textInputType: TextInputType.name,
    validate: (String? val) {
      if (val!.isEmpty) return 'name must not be empty';
    },
    label: AppString.name,
    prefix: Icons.person,
  );
}
