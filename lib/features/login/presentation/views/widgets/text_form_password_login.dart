import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/defaultTextFormField.dart';
import '../../../../../core/utils/widgets/app_string.dart';

Widget TextFormPasswordLogin (TextEditingController passwordLogin, bool isPassword){
    return    defaultTextFormField(
        validate: (String? value) {
          if (value!.isEmpty) {
            return AppString.validateOfPassword;
          }
          return null;
        },
        prefix: Icons.lock,
        label: AppString.labelOfPassword,
        textInputType: TextInputType.phone,
        controller: passwordLogin,
        suffix: isPassword ? Icons.visibility_off : Icons.visibility,
        isPassword: isPassword,
        suffixPressed: () {
            isPassword = !isPassword;
        });

  }



