import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final void Function()? onPress;

  const BottomButton({super.key, required this.text, this.onPress,});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 32.w,vertical: 16.h),
      color: Colors.white,
      child: SafeArea(
        child:  ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10.r))),
            onPressed: onPress,
            child: Text(text,style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
                color: Colors.white
            ),)),

      ),
    );
  }
}
