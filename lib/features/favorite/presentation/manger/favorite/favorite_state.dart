part of 'favorite_cubit.dart';

@immutable
abstract class FavoriteState {}

class FavoriteInitial extends FavoriteState {}

class ShopSuccessGetFavoritesState extends FavoriteState {}

class ShopErorrGetFavoritesState extends FavoriteState {
  final String erorr;

  ShopErorrGetFavoritesState(this.erorr);
}

class ShopLoadingGetFavoritesState extends FavoriteState {}

class ShopSuccessChangeFavoritesState extends FavoriteState {
  final ChangeFavoritsModel? changeFavoritsModel;

  ShopSuccessChangeFavoritesState(this.changeFavoritsModel);
}

class ShopErorrChangeFavoritesState extends FavoriteState {
  final String erorr;

  ShopErorrChangeFavoritesState(this.erorr);
}

class ShopChangeFavoritesState extends FavoriteState {}

