import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/utils/boc_observer/boc_Observer.dart';
import 'core/utils/content/constants.dart';
import 'core/utils/content/onBoarding.dart';
import 'core/utils/local/cashHelper.dart';
import 'core/utils/remote/Dio_helper.dart';
import 'features/cart/presentation/manger/cart/cart_cubit.dart';
import 'features/categorie/presentation/manger/categorie_cubit.dart';
import 'features/favorite/presentation/manger/favorite/favorite_cubit.dart';
import 'features/home/presentation/manger/home_cubit.dart';
import 'features/login/presentation/manger/login/cubit/cubit_login.dart';
import 'features/login/presentation/views/Login_Screen_Shop.dart';
import 'features/shopLayout/presentation/manger/shopLayout/cubit.dart';
import 'features/shopLayout/presentation/manger/shopLayout/states.dart';
import 'features/shopLayout/presentation/views/shopLayout.dart';

void main() async {
  WidgetsFlutterBinding();
  BlocOverrides.runZoned(
    () async {
      DioHelper.init();
      await CashHelper.init();
      bool? onBoarding = CashHelper.getData(key: 'onBoarding');
      token = CashHelper.getData(key: 'token');
      late Widget widget;

      print("=====================================================");
      print(token);
      if (onBoarding != null) {
        if (token != null) {
          widget = const ShopLayout();
        } else {
          widget = loginScreenShop();
        }
      } else {
        widget = const onBoardingScreen();
      }

      runApp(MyApp(
        //onBoarding: onBoarding,
        startWidget: widget,
      ));
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  MyApp({/*required this.onBoarding,*/ required this.startWidget});

  //late final bool onBoarding;
  late final Widget startWidget;

  //late final bool onBoarding;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopCubit(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeCubit()
              ..getHomeData()
          ),
          BlocProvider(
            create: (context) => LoginCubit()..getUserData(),
          ),
          BlocProvider(
            create: (context) => CartCubit()..getCartsData(),
          ),
          BlocProvider(
            create: (context) => FavoriteCubit() ..getFavoritesData(),
          ),
          BlocProvider(
              create: (context) => CategorieCubit()..getCategoriesData()),
        ],
        child: BlocConsumer<ShopCubit, ShopStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData.dark(),
              debugShowCheckedModeBanner: false,
              home: startWidget,
              // onBoarding ? LoginScreen() : OnBoarding(),
            );
          },
        ),
      ),
    );
  }
}
