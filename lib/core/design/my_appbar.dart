import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suits/core/design/app_image.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const MyAppBar({super.key,  this.text=''});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsetsDirectional.only(start: 17.w,top:  12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage('arrow-left.png',height: 24.h,width: 24.w,),
            Spacer(),
            Center(
              child: Text(text,style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter'
              ),),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}
