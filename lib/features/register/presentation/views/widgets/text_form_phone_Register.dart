import 'package:flutter/material.dart';

import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/defaultTextFormField.dart';

Widget TextFormPhoneRegister(phoneController, formKey, Bloc1, emailController,
    passwordController, nameController) {
  return defaultTextFormField(
      controller: phoneController,
      textInputType: TextInputType.phone,
      validate: (String? val) {
        if (val!.isEmpty) return 'phone must not be empty';
      },
      label: 'Phone',
      prefix: Icons.phone,
      suffixPressed: (val) {
        if (formKey.currentState!.validate()) {
          Bloc1.PostData(
              email: emailController.text,
              password: passwordController.text,
              name: nameController.text,
              phone: phoneController.text);
        }
      });
}
