import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/content/component/widgets/navigateTo.dart';
import '../../../../../core/utils/content/component/widgets/textButtom.dart';
import '../../../../../core/utils/widgets/app_string.dart';
import '../../../../register/presentation/views/registerScreen.dart';

Widget Register (context){
  return  Center(
    child: Row(
      children: [
         const Text(
          AppString.dontHaveAnAccount,
        ),
        textButtom(
            text: AppString.register,
            function: () {
              navigateTo(context,  RegisterScreen());
            })
      ],
    ),
  );
}