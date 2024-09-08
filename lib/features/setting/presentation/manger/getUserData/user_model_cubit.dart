import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../../core/utils/content/constants.dart';
import '../../../../../core/utils/remote/Dio_helper.dart';
import '../../../../../end_points/end_points.dart';
import '../../../../shopLayout/data/models/user_model.dart';

part 'user_model_state.dart';

class UserModelCubit extends Cubit<UserModelState> {
  UserModelCubit() : super(UserModelInitial());

  UserModel? userModel;
  void getUserData() async {
    emit(ShopLoadingUserState());
    await DioHelper.getData(
      url: PROFILE,
      token: token,
    ).then((value) {
      userModel = UserModel.fromJson(value.data);
      emit(ShopSuccessUserState());
    }).catchError((erorr) {
      emit(ShopErorrUserState(erorr));
    });
  }
}
