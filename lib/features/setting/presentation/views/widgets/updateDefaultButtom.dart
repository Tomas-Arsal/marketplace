import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/widgets/defaultButtom.dart';
import '../../../../../core/utils/widgets/app_string.dart';
import '../../../../login/presentation/manger/login/cubit/cubit_login.dart';

defaultButtomOfSearch(context, cubit) {
  return defaultButtom(
    background: Colors.lightBlueAccent,
    Width: double.infinity,
    function: () {
      LoginCubit.getObject(context).updateProfile(
        name: cubit.nameController.text,
        email: cubit.emailController.text,
        phone: cubit.phoneController.text,
      );
    },
    text: AppString.update,
  );
}
