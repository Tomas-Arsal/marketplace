
import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/ToastState.dart';
import '../../../../../core/utils/content/component/widgets/myToast.dart';
import '../../../../../core/utils/content/component/widgets/navigateTo.dart';
import '../../../../../core/utils/content/constants.dart';
import '../../../../../core/utils/local/cashHelper.dart';
import '../../../../shopLayout/presentation/views/shopLayout.dart';
import '../../manger/Register/register_cubit/registerStates.dart';

void listenarOfBlocConsumerRegister(state , context){
  if (state is SuccessRegister) {
    if (state.loginModel.status!) {
      myToast(
          message: state.loginModel.message!, state: ToastState.SUCCESS, context: context);
      CashHelper.saveData(
        key: 'token',
        value: state.loginModel.data!.token,
      ).then((value) {
        token = state.loginModel.data!.token;

        navigateTo(context, ShopLayout());
      });
    } else {
      print(state.loginModel.message);
      myToast(message: state.loginModel.message!, state: ToastState.ERROR, context: context);
    }
  }
}