import '../../../../../core/utils/content/component/Component.dart';
import '../../../../../core/utils/content/component/widgets/ToastState.dart';
import '../../../../../core/utils/content/component/widgets/myToast.dart';
import '../../../../../core/utils/content/component/widgets/navigateAndFinished.dart';
import '../../../../../core/utils/content/constants.dart';
import '../../../../../core/utils/local/cashHelper.dart';
import '../../../../shopLayout/presentation/views/shopLayout.dart';
import '../../manger/login/cubit/state_login.dart';

void listenarOfBlocConsumer(state , context){
  if (state is LoginSuccessState) {
    if (state.logInModel.status!) {

      CashHelper.saveData(
        key: 'token',
        value: state.logInModel.data!.token,
      ).then((value) {
        token = state.logInModel.data!.token;
        navigateAndFinished(context, const ShopLayout());
      });
    }  else {
      myToast(
        context: context,
        message: '${state.logInModel.message}', state: ToastState.ERROR,
      );
    }
  }
}