import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_image.dart';
import 'package:suits/core/design/my_appbar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: 'Login',),
      body: Padding(
        padding:  EdgeInsetsDirectional.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 26.h,),
            Text('Hi Welcome back, you’ve been missed',style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Montserrat',
            ),),
            SizedBox(height: 32.h,),
            Padding(
              padding:  EdgeInsetsDirectional.only(bottom: 16.h),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon:Padding(
                    padding:  EdgeInsetsDirectional.all(16.r),
                    child: AppImage('e-mail.png',height: 24.h,width: 24.w,),
                  ),
                  hintText: 'Enter your email',

                    ),

              ),
            ),
            Padding(
              padding:  EdgeInsetsDirectional.only(bottom: 16.h),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon:Padding(
                    padding:  EdgeInsetsDirectional.all(16.r),
                    child: AppImage('password.png',height: 24.h,width: 24.w,),
                  ),
                  hintText: 'Enter your password',
                  suffixIcon: Padding(
                    padding:  EdgeInsets.all(16.r),
                    child: AppImage('visibility_off.png',height: 24.h,width: 24.w,),
                  ),


                    ),

              ),
            ),


          ],
        ),
      ),
    );
  }
}
