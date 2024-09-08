import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/features/home/presentation/views/widgets/buildConditionproductsBuilder.dart';
import 'package:marketplace/features/home/presentation/views/widgets/shopSuccessChangeFavoritesState.dart';

import '../manger/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        shopSuccessChangeFavoritesState(context, state);
      },
      builder: (context, state) {
        return buildConditionproductsBuilder(context);
      },
    );
  }
}
