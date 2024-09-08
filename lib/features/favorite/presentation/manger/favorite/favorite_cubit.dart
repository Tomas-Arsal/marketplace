import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../../../core/utils/content/constants.dart';
import '../../../../../core/utils/remote/Dio_helper.dart';
import '../../../../../end_points/end_points.dart';
import '../../../../favorite/data/models/change_favorites_model.dart';
import '../../../../favorite/data/models/favorites_model.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());
  static FavoriteCubit get(context) => BlocProvider.of(context);

  FavoritesModel? favoritesModell;
  void getFavoritesData() async {
    emit(ShopLoadingGetFavoritesState());
    await DioHelper.getData(
      url: FAVORITES,
      token: token,
    ).then((value) {
      favoritesModell = FavoritesModel.fromJson(value.data);
      emit(ShopSuccessGetFavoritesState());
    }).catchError((erorr) {
      emit(ShopErorrGetFavoritesState(erorr));
    });
  }
  ChangeFavoritsModel? favoritsModel;


  void changeFavoritesData( {required int productId} ) async {

     favorits[productId] = !favorits[productId]!;
    emit(ShopChangeFavoritesState());
    await DioHelper.postData(
      url: FAVORITES,
      data: {
        'product_id': productId,
      },
      token: token,
    ).then((value) {
      favoritsModel = ChangeFavoritsModel.fromJson(value.data);
      if (!favoritsModel!.status!) {
        favorits[productId] = !favorits[productId]!;
        print('changeFavoritesData ${favoritsModel!.status!}');
      }
      else {
     getFavoritesData();
      }
      emit(ShopSuccessChangeFavoritesState(favoritsModel));
    }).catchError((erorr) {
      print('changeFavoritesData ${erorr.toString()}');
      favorits[productId] = !favorits[productId]!;
      emit(ShopErorrChangeFavoritesState(erorr));
    });
  }
}

