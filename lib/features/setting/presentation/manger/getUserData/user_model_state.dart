part of 'user_model_cubit.dart';

@immutable
abstract class UserModelState {}

class UserModelInitial extends UserModelState {}

class ShopLoadingUserState extends UserModelState {}

class ShopSuccessUserState extends UserModelState {}

class ShopErorrUserState extends UserModelState {
  final String erorr;

  ShopErorrUserState(this.erorr);
}