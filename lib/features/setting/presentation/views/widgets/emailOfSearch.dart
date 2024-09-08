import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/widgets/defaultTextFormField.dart';
import '../../../../../core/utils/widgets/app_string.dart';

Widget emailOfSearch(cubit) {
  return defaultTextFormField(
    controller: cubit.emailController,
    textInputType: TextInputType.emailAddress,
    validate: (String? val) {
      if (val!.isEmpty) return 'email must not be empty';
    },
    label: AppString.email,
    prefix: Icons.email,
  );
}
