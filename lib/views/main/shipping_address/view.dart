import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/bottom_button.dart';
import 'package:suits/core/design/my_appbar.dart';
import '../../../core/design/app_image.dart';

part 'components/item.dart';

part 'item_model.dart';

class ShippingAddressView extends StatefulWidget {
  const ShippingAddressView({super.key});

  @override
  State<ShippingAddressView> createState() => _ShippingAddressViewState();
}

class _ShippingAddressViewState extends State<ShippingAddressView> {
  List<ItemModel> list = [
    ItemModel(title1: 'Home', title2: 'Dakahlia, Mansoura, \nAl-Sabahi Street'),
    ItemModel(
        title1: 'Office',
        title2: ' Mansoura, Al-Gamaa District,\nAl-Sabahi Street'),
    ItemModel(
        title1: 'Parent’s House',
        title2: 'Dakahlia, Mansoura, Al-Gamaa District,'),
    ItemModel(title1: 'Frind’s House', title2: 'Dakahlia, Mansoura, '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          text: 'Shipping Address',
        ),
        body: Padding(
          padding:
              EdgeInsetsDirectional.only(start: 17.w, end: 42.w, top: 54.h),
          child: Column(
            children: [
              SizedBox(
                height: 450.h,
                child: ListView.builder(
                                itemBuilder: (context, index) => Item(
                model: list[index],
                                ),
                                itemCount: list.length,
                              ),
              ),
              SizedBox(
                height: 36.h,
              ),
              DottedBorder(
                color: Theme.of(context).primaryColor,

                padding: EdgeInsets.symmetric(horizontal: 66.w,vertical: 16.h),
                child: Text(
                  '+ Add New Shipping Adress',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar:BottomButton(text: 'Apply',)
    );
  }
}
