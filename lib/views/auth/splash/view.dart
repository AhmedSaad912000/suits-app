import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_image.dart';
import 'package:suits/core/logic/cache_helper.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/auth/on_boarding/view.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}


class _SplashViewState extends State<SplashView> {
  bool isNotFirstTime=CacheHelper.isNotFirstTime;
  bool isAuth=CacheHelper.isAuth;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      navigateTo(OnBoardingView());
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: FadeOut(
          duration: Duration(seconds: 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppImage('logo.png',height: 100.h,width: 100.w,),
              SizedBox(width: 16.w,),
              Text('suits',style: TextStyle(
                fontSize: 128.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontFamily: 'WaterFall',
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
