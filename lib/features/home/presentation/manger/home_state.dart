part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class ShopLoadingState extends HomeState {}

class ShopSuccessState extends HomeState {}

class ShopErorrState extends HomeState {
  final String erorr;

  ShopErorrState(this.erorr);
}