import 'package:flutter/material.dart';

import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/defaultButtom.dart';

Widget ConditionalBuilderOfDefaultButtomRegister (context,
emailController,
passwordController,
nameController,
phoneController,
    formKey,
    Bloc1
    ){
    return         defaultButtom(
      background: Colors.lightBlueAccent,
      Width: double.infinity,
      function: () {
        if (formKey.currentState!.validate()) {
          Bloc1.PostData(
              email: emailController.text,
              password: passwordController.text,
              name: nameController.text,
              phone: phoneController.text);
        }
      },
      text: 'Regeister',
    );
  }

/*
*TextButton(
          onPressed: () {
            CashHelper.removeCacheData(key: 'token').then((value) {
              if (value) {
                navigateAndFinished(context, shopLayout());
              }
            });
          },
          child: Text('Sign Out'),
        ),
    );*/
