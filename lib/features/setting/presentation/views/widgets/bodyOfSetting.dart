import 'package:flutter/material.dart';
import 'package:marketplace/features/setting/presentation/views/widgets/phoneOfSetting.dart';
import '../../manger/updateUserData/update_user_data_cubit.dart';
import 'updateDefaultButtom.dart';
import 'emailOfSearch.dart';
import 'logOutButtomSetting.dart';
import 'nameOfSetting.dart';

Widget bodyOfSetting (state ,
cubit,
context){ return
  Column(
    children: [
      if (state is UpdateLoadingState)
        const LinearProgressIndicator(),
      nameOfSearch(cubit),
      const SizedBox(height: 20.0),
      emailOfSearch(cubit),
      const SizedBox(height: 20.0),
      phoneOfSearch(cubit),
      const SizedBox(height: 20.0),
      defaultButtomOfSearch(context, cubit),
      const SizedBox(height: 20.0),
      logOutButtom(context),
    ],
  );
}