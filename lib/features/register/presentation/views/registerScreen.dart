import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/features/register/presentation/views/widgets/bodyOfRegister.dart';
import '../manger/register/register_cubit/REGISTERCubit.dart';
import '../manger/register/register_cubit/registerStates.dart';

class RegisterScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var Bloc1 = RegisterCubit.get(context);
            return Scaffold(
                 body: Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: SingleChildScrollView(
                      child: Form(
                        key: formKey,
                        child: bodyOfRegister(nameController, formKey, Bloc1, emailController, passwordController, phoneController, context),
                      ),
                    ),
                 ),
                );
          }),
    );
  }
}
