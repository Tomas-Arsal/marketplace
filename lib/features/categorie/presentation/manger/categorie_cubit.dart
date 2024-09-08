import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../../core/utils/content/constants.dart';
import '../../../../core/utils/remote/Dio_helper.dart';
import '../../../../end_points/end_points.dart';
import '../../data/models/categories_model.dart';
part 'categorie_state.dart';

class CategorieCubit extends Cubit<CategorieState> {
  CategorieCubit() : super(CategorieInitial());
  static CategorieCubit get(context) => BlocProvider.of(context);

  CategoriesModel? categoriesModel;
  void getCategoriesData() async {
    await DioHelper.getData(
      url: GET_CATEGORIES,
      token: token,
    ).then((value) {
      categoriesModel = CategoriesModel.fromJson(value.data);
      emit(ShopSuccessCategoriesState());
    }).catchError((erorr) {
      print(erorr);
      emit(ShopErorrCategoriesState(erorr));
    });
  }
}
