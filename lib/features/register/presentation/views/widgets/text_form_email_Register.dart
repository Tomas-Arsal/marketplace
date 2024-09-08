import 'package:flutter/material.dart';

import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/defaultTextFormField.dart';

Widget TextFormEmailRegister(emailController, formKey, Bloc1,
    passwordController, nameController, phoneController) {
  return defaultTextFormField(
      controller: emailController,
      textInputType: TextInputType.emailAddress,
      validate: (String? val) {
        if (val!.isEmpty) return 'email must not be empty';
      },
      label: 'Email',
      prefix: Icons.email,
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
