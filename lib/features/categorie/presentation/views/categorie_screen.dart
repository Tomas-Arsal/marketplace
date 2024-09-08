import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/features/categorie/presentation/views/widgets/bodyOfCategorieScreen.dart';

import '../manger/categorie_cubit.dart';

class CategoriesScreen extends StatefulWidget {
  static const route = 'CategoriesScreen';

  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    //   bool isDark = ThemeAndBNCubit.getObject(context).tm == ThemeMode.dark;
    TextTheme textContext = Theme.of(context).textTheme;

    return BlocConsumer<CategorieCubit, CategorieState>(
      listener: (context, state) {},
      builder: (context, state) {
        CategorieCubit cubit = CategorieCubit.get(context);
        return bodyOfCategorieScreen(cubit, deviceSize, textContext);
      },
    );
  }
}
