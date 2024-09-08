part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}


class ShopLoadingCartState extends CartState {}

class ShopSuccessCartState extends CartState {}

class ShopErorrCartState extends CartState {
  final String erorr;

  ShopErorrCartState(this.erorr);
}

class ShopSuccessChangeCartState extends CartState {
  final ChangeCartModel? changeCartModel;

  ShopSuccessChangeCartState(this.changeCartModel);
}
class ShopChangeCartLoadingState extends CartState {}
