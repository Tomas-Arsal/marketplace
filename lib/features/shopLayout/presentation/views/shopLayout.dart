import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/features/shopLayout/presentation/views/widgets/bottomNavigationBar.dart';
import 'package:marketplace/features/shopLayout/presentation/views/widgets/layoutAppBar.dart';
import '../manger/shopLayout/cubit.dart';
import '../manger/shopLayout/states.dart';


class ShopLayout extends StatelessWidget {
  const ShopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit, ShopStates>(
      listener: (context, state) {},
      builder: (context, state) {
        ShopCubit cubit = ShopCubit.get(context);
        return Scaffold(
          appBar: layoutAppBar(context),
          bottomNavigationBar: bottomNavigationBar(cubit) ,
          body: cubit.screens[cubit.currentIndex],
        );
      },
    );
  }
}
