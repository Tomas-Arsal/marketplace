import 'package:flutter/material.dart';

import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/defaultTextFormField.dart';



Widget TextFormPasswordRegister (passwordController, formKey,
Bloc1,
emailController,
nameController,
phoneController){
    return      defaultTextFormField(
        controller: passwordController,
        textInputType: TextInputType.phone,
        validate: (String? val) {
          if (val!.isEmpty) return 'Password must not be empty';
        },
        label: 'Password',
        prefix: Icons.password,
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

