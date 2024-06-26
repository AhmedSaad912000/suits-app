import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginOutSheet extends StatelessWidget {
  final void Function()? onPress;
  const LoginOutSheet({super.key, this.onPress});


  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsetsDirectional.symmetric(
          horizontal: 8.w, vertical: 50.h),
      title: Text(
        'Logout',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat'),
      ),
      children: [
        Divider(
          color: Color(0xffB2B2B2),
          indent: 28.w,
          endIndent: 20.w,
        ),
        SizedBox(
          height: 23.h,
        ),
        Text(
          'Are You Sure You want to log out?',
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Montserrat',
              color: Color(0xff888888)),
        ),
        SizedBox(
          height: 32.h,
        ),
        Row(
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                }, child: Text('Cancel')),
            SizedBox(
              width: 29.w,
            ),
            FilledButton(
              onPressed: onPress,
              child: Text('Yes, Logout'),
              style:FilledButton.styleFrom(
                  fixedSize: Size.fromHeight( 15.h)
              ) ,
            ),

          ],
        )
      ],
    );
  }
}
