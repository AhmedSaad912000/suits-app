import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_button.dart';
import 'package:suits/core/design/app_input.dart';
import 'package:suits/core/design/my_appbar.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/auth/login/view.dart';
import 'package:suits/views/sheets/success.dart';
import '../../../core/design/input_validation.dart';
import '../../../core/logic/cache_helper.dart';
import '../../main/home_nav/view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final formKey = GlobalKey<FormState>();
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: 'Sign Up'),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 17.w),
          child: Column(
            children: [
              AppInput(
                validator: InputValidator.user,
                hintText: 'Enter your name',
                prefixIcon: 'user.png',
              ),
              AppInput(
                validator: InputValidator.phone,
                hintText: 'Enter your email',
                prefixIcon: 'e-mail.png',
              ),
              AppInput(
                validator: InputValidator.password,
                hintText: 'Enter your password',
                prefixIcon: 'password.png',
                isPassword: true,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 1.25.r,
                    child: Checkbox(
                      visualDensity: VisualDensity.compact,
                      side: BorderSide(
                        color: Color(0xffD9D9D9),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r)),
                      value: isSelected,
                      onChanged: (value) {
                        isSelected = value!;
                        setState(() {});
                      },
                    ),
                  ),
                  Text.rich(TextSpan(
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff3B4453),
                        fontFamily: 'Inter',
                      ),
                      children: [
                        TextSpan(text: 'I agree to the medidoc'),
                        TextSpan(
                          text: 'Terms of Service ',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).primaryColor,
                            fontFamily: 'Inter',
                          ),
                        ),
                        TextSpan(text: '\n and'),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).primaryColor,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ]))
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              AppButton(
                onPress: () {
                  if (formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) => SuccessSheet(
                          title: 'Success',
                          subtitle:
                              'Your account has been successfully registered',
                          textButton: 'Login',
                        onPress: ()async {
                        await CacheHelper.setIsAuth();
                        navigateTo(HomeNavView(),withHistory: false);
                      },
                      ),
                    );
                  }
                },
                text: 'Sign UP',
              ),
              SizedBox(
                height: 32.h,
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff717784),
                          fontFamily: 'Inter'),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateTo(LoginView());
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).primaryColor,
                            fontFamily: 'Inter'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
