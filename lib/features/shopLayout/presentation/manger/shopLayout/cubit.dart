import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/features/shopLayout/presentation/manger/shopLayout/states.dart';
import '../../../../cart/presentation/views/cart_screen.dart';
import '../../../../categorie/presentation/views/categorie_screen.dart';
import '../../../../favorite/presentation/views/favorite_screen.dart';
import '../../../../home/presentation/views/home_screen.dart';
import '../../../../setting/presentation/views/settings_screen.dart';




class ShopCubit extends Cubit<ShopStates> {
  ShopCubit() : super(ShopInitaialState());

  static ShopCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  void changeBottomNavigationBarItems(int index) {
    currentIndex = index;
    emit(ShopChangeBottomNavigationBarItemsState());
  }

  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.apps),
      label: "Categories",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: "Favorite",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.shopping_cart,
      ),
      label: "Cart",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: "Settings",
    ),
  ];
  List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    FavoritesScreen(),
    CartScreen(),
    setteing_Screen(),
  ];

}
