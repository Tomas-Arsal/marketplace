import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/utils/remote/Dio_helper.dart';
import '../../../../../../end_points/end_points.dart';
import '../../../../../shopLayout/data/models/user_model.dart';
import 'registerStates.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(InitRegisterState());
  static RegisterCubit get(context) => BlocProvider.of(context);

  bool isHidePassword = true;
  IconData password = Icons.visibility_outlined;

  UserModel? shopLoginModel;
  void changePassword() {
    isHidePassword = !isHidePassword;
    password = isHidePassword
        ? Icons.visibility_outlined
        : Icons.visibility_off_outlined;
    emit(ChangeRegisterPassword());
  }

  void PostData(
      {required String email,
      required String password,
      required String name,
      required String phone}) {
    emit(LoadingRegister());
    DioHelper.postData(url: REGISTER, data: {
      'email': email,
      'password': password,
      'name': name,
      'phone': phone
    }).then((value) {
      print(value.data);
      shopLoginModel = UserModel.fromJson(value.data);
      // focus here you can't print the data token because if the data == null  will give an error
      // print(ShopRegister!.data!.token);
      print(shopLoginModel!.message);
      print(shopLoginModel!.status);
      emit(SuccessRegister(shopLoginModel!));
    }).catchError((error) {
      print(error.toString());
      emit(ErrorRegister(error: error.toString()));
    });
  }
}
