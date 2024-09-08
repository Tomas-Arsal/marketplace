import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/defaultButtom.dart';
import '../../../../../core/utils/content/component/widgets/navigateTo.dart';
import '../../../../shopLayout/presentation/views/shopLayout.dart';
import '../../manger/login/cubit/cubit_login.dart';


Widget ConditionalBuilderOfDefaultButtomLogin (formKey , textLogin , passwordLogin , context ){
  var loginCubit=LoginCubit.getObject(context);

  return  Center(
      child: ConditionalBuilder(
        condition: true,
        builder: (BuildContext context) =>
        defaultButtom(
          background: Colors.black12,
          Width: double.infinity,
          function: () {
            if (formKey.currentState!.validate()) {
              loginCubit.userLogin(
                email: textLogin.text,
                password: passwordLogin.text,
              );
              navigateTo(context, const ShopLayout());
            }
          },
          text: 'Login',
        ),
        fallback: (BuildContext context) =>
        const CircularProgressIndicator(),
      ),
    );
  }
