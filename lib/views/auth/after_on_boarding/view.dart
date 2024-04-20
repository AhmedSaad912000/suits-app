import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_button.dart';
import 'package:suits/core/design/app_image.dart';
import 'package:suits/core/logic/cache_helper.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/auth/login/view.dart';

class AfterOnBoardingView extends StatelessWidget {
  const AfterOnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 33.h,
            ),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppImage(
                    'after_boarding1.png',
                    height: 370.h,
                    width: 137.w,
                  ),
                  SizedBox(
                    width: 53.w,
                  ),
                  Column(
                    children: [
                      AppImage(
                        'after_boarding2.png',
                        height: 214.h,
                        width: 137.w,
                      ),
                      SizedBox(
                        height: 23.h,
                      ),
                      AppImage(
                        'after_boarding3.jpg',
                        height: 133.h,
                        width: 141.w,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            Text.rich(
              TextSpan(
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(text: 'The '),
                    TextSpan(
                        text: 'Suits App',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    TextSpan(text: ' that \nMakes Your Look Your Best'),
                  ]),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Everything you need in the world\nof fashion, old and new',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff727272),
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(
              height: 61.h,
            ),
            Padding(
              padding:  EdgeInsetsDirectional.symmetric(horizontal: 17.w),
              child: AppButton(
                onPress: ()async{
              await  CacheHelper.setIsNotFirstTime();
                navigateTo(LoginView(),withHistory: false);
              },text: 'Get started',),
            )

          ],
        ),
      ),
    );
  }
}
