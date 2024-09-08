import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/utils/content/constants.dart';
import '../../../../../core/utils/remote/Dio_helper.dart';
import '../../../../../end_points/end_points.dart';
import '../../../../shopLayout/data/models/user_model.dart';

part 'update_user_data_state.dart';

class UpdateUserDataCubit extends Cubit<UpdateUserDataState> {
  UpdateUserDataCubit() : super(UpdateUserDataInitial());
  UserModel? userModel;

  void updateUserData({
    required String name,
    required String email,
    required String phone,
  }) async {
    emit(UpdateLoadingState());
    await DioHelper.putData(
      url: UPDATE_PROFILE,
      token: token,
      data: {
        'name': name,
        'phone': phone,
        'email': email,
      },
    ).then((value) {
      userModel = UserModel.fromJson(value.data);
      emit(UpdateSuccessState(userModel!));
    }).catchError((erorr) {
      print(erorr);
      emit(UpdateErorrState(erorr));
    });
  }

}
