part of 'updatecart_cubit.dart';

@immutable
abstract class UpdatecartState {}

class UpdatecartInitial extends UpdatecartState {}


class UpdateLoadingCartState extends UpdatecartState {}

class UpdateSuccessCartState extends UpdatecartState {
  // final UserModel userModel;
  // UpdateSuccessCartState(this.userModel);
}

class UpdateErorrCartState extends UpdatecartState {
  final String erorr;
  UpdateErorrCartState(this.erorr);
}

