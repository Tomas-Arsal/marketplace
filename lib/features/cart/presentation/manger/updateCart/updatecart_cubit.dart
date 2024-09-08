import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/utils/content/constants.dart';
import '../../../../../core/utils/remote/Dio_helper.dart';
import '../../../../../end_points/end_points.dart';

part 'updatecart_state.dart';

class UpdatecartCubit extends Cubit<UpdatecartState> {
  UpdatecartCubit() : super(UpdatecartInitial());

  void updateCart({
    required int quantity,
  }) async {
    emit(UpdateLoadingCartState());
    await DioHelper.putData(
      url: UPDATE_CARTS,
      token: token,
      data: {
        'quantity': quantity,
      },
    ).then((value) {
      emit(UpdateSuccessCartState());
    }).catchError((erorr) {
      print(erorr);
      emit(UpdateErorrCartState(erorr));
    });
  }
}
