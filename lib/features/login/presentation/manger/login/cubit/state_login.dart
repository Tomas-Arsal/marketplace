

import '../../../../../shopLayout/data/models/user_model.dart';

abstract class LoginStates {}

class LoginInitState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {
  final UserModel logInModel;

  LoginSuccessState(this.logInModel);
}

class LoginErrorState extends LoginStates {
  final String error;

  LoginErrorState(this.error);
}

class LogIngToggleIconPass extends LoginStates {}

class UpdateProfileLoadingState extends LoginStates {}

class UpdateProfileSuccessfulState extends LoginStates {
  final UserModel logInModel;

  UpdateProfileSuccessfulState(this.logInModel);
}

class UpdateProfileErrorState extends LoginStates {
  final String error;

  UpdateProfileErrorState(this.error);
}

class GetUserDataLoadingState extends LoginStates {}

class GetUserDataSuccessState extends LoginStates {
  final UserModel userData;

  GetUserDataSuccessState(this.userData);
}

class GetUserDataErrorState extends LoginStates {}

class RegisterLoadingState extends LoginStates {}

class RegisterSuccessState extends LoginStates {
  final UserModel registerModel;

  RegisterSuccessState(this.registerModel);
}

class RegisterErrorState extends LoginStates {
  final String error;

  RegisterErrorState(this.error);
}
