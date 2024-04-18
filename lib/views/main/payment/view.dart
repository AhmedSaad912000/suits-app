import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:suits/core/design/bottom_button.dart';
import 'package:suits/core/design/my_appbar.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: 'Payment',),
      body: Column(
        children: [
          Lottie.asset('assets/lottie/Animation - 1713353816547.json'),
          Text('Payment Successful!',style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w700,
          fontFamily: 'Arial'),),
          SizedBox(height: 16.h,),
          Text('Thank you for your purchase.',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700,
          fontFamily: 'Arial',color: Color(0xff858585)),)
        ],
      ),
      bottomNavigationBar: BottomButton(text: 'View Order',onPress: (){},),
    );
  }
}
