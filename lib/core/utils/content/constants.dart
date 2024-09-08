import '../../../features/login/presentation/views/Login_Screen_Shop.dart';
import '../local/cashHelper.dart';
import 'component/Component.dart';
import 'component/widgets/navigateAndFinished.dart';

void signOut(context) async {
  await CashHelper.removeData(key: 'token').then((value) {
    if (value) {
      navigateAndFinished(context, loginScreenShop());
    }
  });
}

void printFullText(String text) {
  //Copied Method
  final pattern = RegExp('.{1,800}');
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}

String? token = '';
 Map<int, bool> favorits = {};
Map<int, bool> cartProducts = {};
