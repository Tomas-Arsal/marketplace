import 'package:flutter/cupertino.dart';
import 'package:marketplace/features/register/presentation/views/widgets/text_form_email_Register.dart';
import 'package:marketplace/features/register/presentation/views/widgets/text_form_name_Register.dart';
import 'package:marketplace/features/register/presentation/views/widgets/text_form_password_Register.dart';
import 'package:marketplace/features/register/presentation/views/widgets/text_form_phone_Register.dart';
import 'conditional_Builder_default_Buttom_Register.dart';

Widget bodyOfRegister (nameController,
formKey,
Bloc1,
emailController,
passwordController,
phoneController,context){
  return Column(
    children: [
      //   if (SocialCubit is )
      //   LinearProgressIndicator(),
      const SizedBox(height: 10.0),
      TextFormNameRegister(
          nameController,
          formKey,
          Bloc1,
          emailController,
          passwordController,
          phoneController),
      const SizedBox(height: 20.0),
      TextFormEmailRegister(
          emailController,
          formKey,
          Bloc1,
          passwordController,
          nameController,
          phoneController),
      const SizedBox(height: 20.0),
      TextFormPhoneRegister(
          phoneController,
          formKey,
          Bloc1,
          emailController,
          passwordController,
          nameController),
      const SizedBox(height: 20.0),
      TextFormPasswordRegister(
          passwordController,
          formKey,
          Bloc1,
          emailController,
          nameController,
          phoneController),
      const SizedBox(height: 20.0),
      ConditionalBuilderOfDefaultButtomRegister(
          context,
          emailController,
          passwordController,
          nameController,
          phoneController,
          formKey,
          Bloc1),
    ],
  );
}