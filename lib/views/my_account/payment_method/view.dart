import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_image.dart';
import 'package:suits/core/design/app_input.dart';
import 'package:suits/core/design/bottom_button.dart';
import 'package:suits/core/design/input_validation.dart';
import 'package:suits/core/design/my_appbar.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/main/payment/view.dart';
part 'item_model.dart';


class PaymentMethodsView extends StatefulWidget {
  const PaymentMethodsView({super.key});

  @override
  State<PaymentMethodsView> createState() => _PaymentMethodsViewState();
}

class _PaymentMethodsViewState extends State<PaymentMethodsView> {
  List<_ItemModel> list=[
    _ItemModel(image: 'paypal.png', text: 'Paypal'),
    _ItemModel(image: 'apple_cart.png', text: 'Apple Pay'),
    _ItemModel(image: 'google_cart.png', text: 'Google'),
  ];
  int?selectedValue;
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: 'Payment Methods',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 17.w, vertical: 23.h),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'Credit & Debit Card',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                    ),
                  )),
              SizedBox(
                height: 26.h,
              ),
              AppInput(
                validator: InputValidator.card,
                keyboardType: TextInputType.number,
                prefixIcon: 'credit-card.png',
                bgColor: Colors.transparent,
                labelText: 'Add Card',
              ),
              SizedBox(
                height: 26.h,
              ),
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'More Payment Options',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                    ),
                  )),
              SizedBox(height: 21.h,),
              Container(
                padding: EdgeInsetsDirectional.all( 14.r),
                decoration: BoxDecoration(border: Border.all(color: Color(0xffAFAFAF)),
                  borderRadius: BorderRadiusDirectional.circular(20.r),
                ),
                child: Column(
                  children: List.generate(
                      list.length,
                          (index) =>Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AppImage(
                                list[index].image,
                                height: 20.h,
                                width: 20.w,
                              ),
                              SizedBox(width:16.w ,),
                              Text(
                                list[index].text,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff858585),
                                    fontFamily: 'Montserrat'
                                ),
                              ),
                              Spacer(),
                              Radio(
                                value:index,
                                groupValue:selectedValue,
                                onChanged: (value) {
                                  selectedValue=index;
                                  setState(() {
                                  });
                                },
                              ),

                            ],
                          ),


                  ),

                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomButton(text: 'Confirm Payment',onPress:(){
        if(formKey.currentState!.validate()){
          navigateTo(PaymentView());
        }
      } ),
    );
  }
}
