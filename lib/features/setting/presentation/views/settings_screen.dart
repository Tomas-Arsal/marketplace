import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/features/setting/presentation/views/widgets/bodyOfSetting.dart';
import '../../../../core/utils/widgets/custom_loading_indicator.dart';
import '../../../login/presentation/manger/login/cubit/cubit_login.dart';
import '../../../shopLayout/presentation/manger/shopLayout/cubit.dart';
import '../../../shopLayout/presentation/manger/shopLayout/states.dart';

class setteing_Screen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    LoginCubit cubit = LoginCubit.getObject(context);
    return BlocConsumer<ShopCubit, ShopStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return ConditionalBuilder(
            condition: LoginCubit.getObject(context).userData != null,
            builder: (context) => Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: bodyOfSetting(state, cubit, context),
                  ),
                ),
              ),
            ),
            fallback: (context) => const CustomLoadingIndicator(),
          );
        });
  }
}
