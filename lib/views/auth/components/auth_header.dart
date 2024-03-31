import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthHeader extends StatelessWidget {
  final String title, desc;
  const AuthHeader({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24.h,
        ),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xff101623),
                fontFamily: 'Inter'
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
         desc,
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xffA1A8B0),
              fontFamily: 'Inter'
          ),
        ),
        SizedBox(
          height: 32.h,
        ),
      ],
    );
  }
}
