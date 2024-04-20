import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../core/design/app_button.dart';
import '../../core/logic/helper_methods.dart';
import '../main/home_nav/view.dart';

class SuccessSheet extends StatelessWidget {
  final String title,subtitle,textButton;
  final void Function()? onPress;
  const SuccessSheet({super.key, required this.title, required this.subtitle, required this.textButton, this.onPress});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 26.w,vertical: 52.h),
      children: [
        Lottie.asset('assets/lottie/Animation - 1713353816547.json'),
        Text(title,textAlign: TextAlign.center,style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          fontFamily: 'Inter',

        ),),
        SizedBox(height: 8.h,),
        Text(subtitle,textAlign: TextAlign.center,style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            fontFamily: 'Inter',
            color: Color(0xffA1A8B0)

        ),),
        SizedBox(height: 16.h,),
        AppButton(
          text: textButton,
          onPress: onPress,
        )




      ],
    );
  }
}
