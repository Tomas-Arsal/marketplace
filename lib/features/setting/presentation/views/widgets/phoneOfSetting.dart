import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/widgets/defaultTextFormField.dart';
import '../../../../../core/utils/widgets/app_string.dart';

Widget phoneOfSearch (cubit){ return  defaultTextFormField(
  controller: cubit.phoneController,
  textInputType: TextInputType.phone,
  validate: (String? val) {
    if (val!.isEmpty) return 'phone must not be empty';
  },
  label: AppString.phone,
  prefix: Icons.phone,
) ;}