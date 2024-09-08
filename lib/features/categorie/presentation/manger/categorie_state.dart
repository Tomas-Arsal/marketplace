part of 'categorie_cubit.dart';

@immutable
abstract class CategorieState {}

class CategorieInitial extends CategorieState {}

class ShopLoadingCategoriesState extends CategorieState {}

class ShopSuccessCategoriesState extends CategorieState {}

class ShopErorrCategoriesState extends CategorieState {
  final String erorr;

  ShopErorrCategoriesState(this.erorr);
}