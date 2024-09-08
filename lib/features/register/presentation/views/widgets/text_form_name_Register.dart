import 'package:flutter/material.dart';

import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/defaultTextFormField.dart';

Widget TextFormNameRegister (nameController , formKey ,
Bloc1,
emailController,
passwordController,
phoneController) {
  return    defaultTextFormField(
      controller: nameController,
      textInputType: TextInputType.name,
      validate: (String? val) {
        if (val!.isEmpty) return 'name must not be empty';
      },
      label: 'Name',
      prefix: Icons.person,
      suffixPressed: (val) {
        if (formKey.currentState!.validate()) {
          Bloc1.PostData(
              email: emailController.text,
              password: passwordController.text,
              name: nameController.text,
              phone: phoneController.text);
        }
      }
  );

}
