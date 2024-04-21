import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_button.dart';
import 'package:suits/core/design/app_input.dart';
import 'package:suits/core/design/input_validation.dart';
import 'package:suits/core/design/my_appbar.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/auth/components/auth_header.dart';
import 'package:suits/views/auth/confirm_code/view.dart';
class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Color(0xffF4F5F7),
        appBar: MyAppBar(),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 17.w),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                AuthHeader(title: 'Forgot Your Password?', desc:  'Enter your email or your phone number, we will send you confirmation code',),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.r)
                  ),
                  child: TabBar(
                    dividerHeight: 0,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 4.w,vertical: 6.h),
                    labelStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Theme.of(context).primaryColor
                    ),
                      unselectedLabelStyle:TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                          color: Color(0xffA1A8B0),
                      ),
                       indicatorSize: TabBarIndicatorSize.tab,
                      splashBorderRadius: BorderRadius.circular(29.r),
                      indicator: BoxDecoration(
                        color: Color(0xffF9FAFB),
                        borderRadius: BorderRadius.circular(29.r),
                        border: Border.all(color: Color(0xffF9FAFB)),
                      ),

                      tabs: [
                    Tab(text: 'Email',),
                    Tab(text: 'Phone',),
                  ]),
                ),
                SizedBox(height: 32.h,),
                Expanded(
                  flex: 4,
                  child: TabBarView(children: [
                    AppInput(
                      validator: InputValidator.email,
                      prefixIcon: 'email_reset.png',
                      hintText: 'Enter your e-mail',

                    ),
                    AppInput(
                      keyboardType: TextInputType.number,
                      validator: InputValidator.phone,
                      prefixIcon: 'phone_reset.png',
                      hintText: 'Enter your phone',

                    ),
                  ]),
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: AppButton(
                    onPress: (){
                      if(formKey.currentState!.validate()){
                        navigateTo(ConfirmCodeView());
                        
                      }
                    },
                    text: 'Reset Password',
                  ),
                ),
                Spacer(),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
