import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class SocialMediaItem extends StatelessWidget {
  final String icon,text;
  const SocialMediaItem({super.key, required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(bottom: 16.h),
      child: Ink(
        color: Colors.white,
        child: ListTile(
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.h),
              borderSide: BorderSide(color: Color(0xffE5E7EB))
          ),
          leading: AppImage(icon,height: 20.h,width: 20.w,),
          title: Text(text,style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter'
          ),),
        ),
      ),
    );
  }
}
