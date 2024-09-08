import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/widgets/app_string.dart';

class TextLogin extends StatelessWidget {
  const TextLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const Text(
      AppString.login,
      style: TextStyle(
        fontSize: 50.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
