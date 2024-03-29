import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_button.dart';
import 'package:suits/core/design/app_image.dart';
import 'package:suits/core/design/app_input.dart';
import 'package:suits/core/design/my_appbar.dart';
import 'package:suits/core/design/soical_media_item.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: 'Login',),
      body: Padding(
        padding:  EdgeInsetsDirectional.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 26.h,),
              Text('Hi Welcome back, you’ve been missed',style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat',
              ),),
              SizedBox(height: 32.h,),
              AppInput(
                hintText: 'Enter your email',
                prefixIcon: 'e-mail.png',
              ),
              AppInput(
                hintText: 'Enter your password',
                prefixIcon: 'password.png',
                isPassword: true,
                bottomSpace: 0,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(onPressed: (){}, child: Text('Forgot Password?',style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter'
          
                ),)),
              ),
              SizedBox(height: 20.h,),
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  onPress: (){},
                  text: 'Login',
                ),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Don’t have an account?',style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff717784),
                      fontFamily: 'Inter'
                    ),),
                    SizedBox(width: 2.w,),
                    Text('Sign Up',style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color:Theme.of(context).primaryColor,
                        fontFamily: 'Inter'
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Expanded(child: Divider()),
                  SizedBox(width: 2.w,),
                  Text('OR',style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff717784),
                      fontFamily: 'Inter'
                  ),),
                  SizedBox(width: 2.w,),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 30.h,),
              SocialMediaItem(icon: 'google.png', text: 'Sign in with google'),
              SocialMediaItem(icon: 'apple.png', text: 'Sign in with Apple'),
              SocialMediaItem(icon: 'facebook.png', text: 'Sign in with Facebook'),
          
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
