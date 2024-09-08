import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/content/constants.dart';
import '../../../../favorite/presentation/manger/favorite/favorite_cubit.dart';

class iconButtomOfFav extends StatelessWidget {
  final int  productId;

   iconButtomOfFav({Key? key, required this.productId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoriteCubit, FavoriteState>(
      listener: (context, state) {},
      builder: (context, state) {
        return IconButton(
            onPressed: ()  {
               FavoriteCubit.get(context)
                  .changeFavoritesData(productId: productId, );
            },
            icon: CircleAvatar(
              radius: 15,
              backgroundColor:
              favorits[productId] ?? false
                  ? Colors.blue
                  : Colors.grey,
              child: const Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ));
      },
    );
  }
}
