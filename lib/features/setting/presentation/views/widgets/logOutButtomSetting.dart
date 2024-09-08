import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/widgets/defaultButtom.dart';
import '../../../../../core/utils/content/constants.dart';
import '../../../../../core/utils/local/cashHelper.dart';
import '../../../../../core/utils/widgets/app_string.dart';

Widget logOutButtom(context) {
  return defaultButtom(
    background: Colors.lightBlueAccent,
    Width: double.infinity,
    function: () {
      signOut(context);

      if (kDebugMode) {
        print(CashHelper.getData(key: 'token'));
        print(token);
      }

      CashHelper.removeData(key: 'token');
      token = null;

      if (kDebugMode) {
        CashHelper.getData(key: 'token');
        print(token);
      }
    },
    text: AppString.logOut,
  );
}
