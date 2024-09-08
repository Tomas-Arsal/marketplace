import 'package:flutter/material.dart';
import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/navigateTo.dart';
import '../../../../search/presentation/views/search_screen.dart';

 layoutAppBar (context){
  return AppBar(
    title: const Text("Smart Store"),
    actions: [
      IconButton(
        onPressed: () {
          navigateTo(context, searchScreen());
        },
        icon: const Icon(Icons.search),
      )
    ],
  );
}