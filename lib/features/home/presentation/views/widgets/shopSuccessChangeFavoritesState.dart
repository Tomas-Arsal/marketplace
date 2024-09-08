
import '../../../../../core/utils/content/component/widgets/ToastState.dart';
import '../../../../../core/utils/content/component/widgets/myToast.dart';
import '../../../../favorite/presentation/manger/favorite/favorite_cubit.dart';

shopSuccessChangeFavoritesState(state ,
context){

  if (state is ShopSuccessChangeFavoritesState) {
    if (!state.changeFavoritsModel!.status!) {
      myToast(
          message: state.changeFavoritsModel!.message!,
          state: ToastState.ERROR,
          context: context);
    }
  }
}