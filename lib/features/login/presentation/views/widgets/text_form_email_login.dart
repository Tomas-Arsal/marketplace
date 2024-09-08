import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/defaultTextFormField.dart';
import '../../../../../core/utils/widgets/app_string.dart';

Widget TextFormEmailLogin(textLogin){
    return defaultTextFormField(
      controller: textLogin,
      textInputType: TextInputType.emailAddress,
      label: AppString.labelOfEmail,
      validate: (String? value) {
        if (value!.isEmpty) {
          return AppString.validateOfEmail;
        }
      },
      prefix: Icons.email,
    );
  }

