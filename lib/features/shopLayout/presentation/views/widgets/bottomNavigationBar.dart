import 'package:flutter/material.dart';

bottomNavigationBar(cubit){ return
  BottomNavigationBar(
    onTap: (index) {
      cubit.changeBottomNavigationBarItems(index);
    },
    currentIndex: cubit.currentIndex,
    items: cubit.items,
  );
}
