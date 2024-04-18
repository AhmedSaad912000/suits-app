import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_input.dart';
import 'package:suits/core/design/bottom_button.dart';
import 'package:suits/core/design/my_appbar.dart';

class AddAddressesView extends StatelessWidget {
  const AddAddressesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: 'Add Address',),
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 17.w,vertical: 36.h),
        child: Column(
          children: [
            SizedBox(height: 36.h,),
            AppInput(labelText: 'Titel', bgColor: Colors.transparent,),
            AppInput(labelText: 'Address', bgColor: Colors.transparent,),
            AppInput(labelText: 'Building No', bgColor: Colors.transparent,),
            AppInput(labelText: 'Floor No', bgColor: Colors.transparent,),
            AppInput(labelText: 'Apartment No', bgColor: Colors.transparent,),

          ],
        ),
      ),
      bottomNavigationBar: BottomButton(text: 'Save',),

    );
  }
}
