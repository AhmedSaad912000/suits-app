import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_button.dart';
import 'package:suits/core/design/my_appbar.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/auth/components/auth_header.dart';
import 'package:suits/views/auth/login/view.dart';
import '../../../core/design/app_input.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AuthHeader(
                    title: 'Create New Password',
                    desc: 'Create your new password to login           '),
                SizedBox(
                  height: 24.h,
                ),
                AppInput(
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This Filed Must Be Required';
                    } else if (value.length<7){
                      return 'Password Must Be At Least 7 Characters';
                    }else if (value != confirmPasswordController.text) {
                      return 'This Password Must Be Match';
                    }
                    else {
                      return null;
                    }
                  },
                  hintText: 'Enter your password',
                  prefixIcon: 'password.png',
                  isPassword: true,
                ),
                AppInput(
                  controller: confirmPasswordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This Filed Must Be Required';
                    } else if (value.length<7){
                      return 'Password Must Be At Least 7 Characters';
                    }else if (value != passwordController.text) {
                      return 'This Password Must Be Match';
                    }
                    else {
                      return null;
                    }
                  },
                  hintText: 'confirm Password',
                  prefixIcon: 'password.png',
                  isPassword: true,
                ),
                AppButton(
                  onPress: () {
                    if(formKey.currentState!.validate()){
                      navigateTo(LoginView());
                    }
                  },
                  text: 'Create Password',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
