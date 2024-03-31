import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:suits/core/design/app_button.dart';
import 'package:suits/core/design/my_appbar.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/auth/components/auth_header.dart';
import 'package:suits/views/auth/new_password/view.dart';

class ConfirmCodeView extends StatelessWidget {
  const ConfirmCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F7),
      appBar: MyAppBar(),
      body: Padding(
        padding:  EdgeInsetsDirectional.symmetric(horizontal: 17.w),
        child: Column(
          children: [
            AuthHeader(title: 'Enter Verification Code',
                desc: 'Enter code that we have sent to your        \n number 08528188*** '),
            PinCodeTextField(
              enableActiveFill: true,
              keyboardType: TextInputType.number,
              backgroundColor: Colors.transparent,
                pinTheme: PinTheme(
                  selectedColor: Theme.of(context).primaryColor,
                  shape: PinCodeFieldShape.box,
                  selectedFillColor: Colors.white,
                  activeFillColor: Colors.white,
                  inactiveFillColor:Colors.white,
                  fieldWidth: 64.w,
                  fieldHeight: 64.h,
                  borderRadius: BorderRadius.circular(16.r),
                  inactiveColor: Colors.white,
                   activeColor: Colors.white
                ),appContext: context, length: 4),
            SizedBox(height: 32.h,),
            SizedBox(
              width: double.infinity,
              child: AppButton(
                onPress: (){
                  navigateTo(NewPasswordView());
                },
                text: 'Verify',
              ),
            ),
            SizedBox(height: 32.h,),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Didn’t receive the code? ',style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff717784),
                      fontFamily: 'Inter'
                  ),),
                  SizedBox(width: 2.w,),
                  Text('Resend',style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color:Theme.of(context).primaryColor,
                      fontFamily: 'Inter'
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
