import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/features/login/presentation/manger/login/cubit/state_login.dart';
import '../../../../../../core/utils/content/constants.dart';
import '../../../../../../core/utils/remote/Dio_helper.dart';
import '../../../../../shopLayout/data/models/user_model.dart';




class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitState());

  static LoginCubit getObject(context) => BlocProvider.of(context);

  /// User Register
  UserModel? registerModel;

  void userRegister({
    required String name,
    required String email,
    required String password,
    required String phone,
  }) {
    emit(RegisterLoadingState());
    DioHelper.postData(
      url: 'register',
      data: {
        'name': name,
        'email': email,
        'password': password,
        'phone': phone,
      },
    ).then((value) {
      registerModel = UserModel.fromJson(value.data);

      ///In this case, I sent the model so that I know how to extract the message
      /// from the register screen and print it for the user

      emit(RegisterSuccessState(registerModel!));
    }).catchError((error) {
      if (kDebugMode) {
        print('Error F userRegister ${error.toString()}');
      }
      emit(RegisterErrorState(error));
    });
  }

  /// User Login
  UserModel? logInModel;

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(LoginLoadingState());
    DioHelper.postData(
      url: 'login',
      data: {
        'email': email,
        'password': password,
      },
    ).then((value) {
      logInModel = UserModel.fromJson(value.data);

      if (kDebugMode) {
        print(value.toString());
      }

      ///In this case, I sent the model so that I know how to extract
      ///the message from the login screen and print it for the laser
      emit(LoginSuccessState(logInModel!));
    }).catchError((error) {
      if (kDebugMode) {
        print(error.toString());
      }
      emit(LoginErrorState(error));
    });
  }

  /// Get Data Profile

  UserModel? userData;
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();

  void getUserData() {
    emit(GetUserDataLoadingState());

    DioHelper.getData(url: 'profile', token: token).then((value) {
      userData = UserModel.fromJson(value.data);
      nameController.text = userData!.data!.name!;
      emailController.text = userData!.data!.email!;
      phoneController.text = userData!.data!.phone!;

      emit(GetUserDataSuccessState(userData!));
    }).catchError((error) {
      if (kDebugMode) {
        print('Error F getUserData ${error.toString()}');
      }

      emit(GetUserDataErrorState());
    });
  }

  void updateProfile({
    required String name,
    required String email,
    required String phone,
  }) {
    emit(UpdateProfileLoadingState());

    DioHelper.putData(
      url: 'update-profile',
      data: {
        'name': name,
        'phone': phone,
        'email': email,
      },
      token: token,
    ).then((value) {
      logInModel = UserModel.fromJson(value.data);

      emit(UpdateProfileSuccessfulState(logInModel!));
    }).catchError((error) {
      if (kDebugMode) {
        print('ERROR F updateProfile= ${error.toString()}');
      }

      emit(UpdateProfileErrorState(error));
    });
  }

  bool isShowPass = true;

  IconData icon = Icons.visibility;

  void toggleIconPass() {
    isShowPass = !isShowPass;

    icon = isShowPass ? Icons.visibility : Icons.visibility_off_outlined;

    emit(LogIngToggleIconPass());
  }
}
