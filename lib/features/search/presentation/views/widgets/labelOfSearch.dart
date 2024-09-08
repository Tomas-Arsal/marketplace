import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/widgets/defaultTextFormField.dart';
import '../../../../../core/utils/widgets/app_string.dart';

Widget  labelOfSearch(model, TextSearch) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: defaultTextFormField(
      onchanged: (String text) {
        model.search(text);
      },
      controller: TextSearch,
      textInputType: TextInputType.emailAddress,
      label: AppString.search,
      validate: (String? value) {
        if (value!.isEmpty) {
          return 'Please Enter Your search Adress';
        }
      },
      prefix: Icons.search,
    ),
  );
}
