part of 'update_user_data_cubit.dart';

@immutable
abstract class UpdateUserDataState {}

class UpdateUserDataInitial extends UpdateUserDataState {}

class UpdateLoadingState extends UpdateUserDataState {}

class UpdateSuccessState extends UpdateUserDataState {
  final UserModel userModel;
  UpdateSuccessState(this.userModel);
}

class UpdateErorrState extends UpdateUserDataState {
  final String erorr;
  UpdateErorrState(this.erorr);
}