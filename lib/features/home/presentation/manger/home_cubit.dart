import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../../core/utils/content/constants.dart';
import '../../../../core/utils/remote/Dio_helper.dart';
import '../../../../end_points/end_points.dart';
import '../../data/models/home_model.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  HomeModel? homeModel;

  void getHomeData() async {
    emit(ShopLoadingState());
    await DioHelper.getData(
      url: HOME,
      token: token,
    ).then((value) {
      homeModel = HomeModel.fromJson(value.data);
      homeModel!.data!.products.forEach((element) {
        favorits.addAll({
          element.id!: element.inFavorites!,
        });
      });
      homeModel!.data!.products.forEach((element) {
        cartProducts.addAll({
          element.id!: element.inCart!,
        });
      });
      emit(ShopSuccessState());
    }).catchError((erorr) {
      print(erorr);
      emit(ShopErorrState(erorr));
    });
  }
}
