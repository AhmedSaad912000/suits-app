import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_button.dart';
import 'package:suits/core/design/app_image.dart';
import 'package:suits/core/design/my_appbar.dart';

part 'components/product_description.dart';

part 'components/style.dart';

part 'components/quality.dart';

part 'components/color.dart';

part 'components/size.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F7),
      appBar: MyAppBar(),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          AppImage(
              'https://i.pinimg.com/originals/80/1f/57/801f57483b32abd6c2500cc86bec11fe.jpg'),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              padding: EdgeInsetsDirectional.all(16.r),
              height: 375.h,
              decoration: BoxDecoration(
                  color: Color(0xffF4F5F7),
                  borderRadius: BorderRadiusDirectional.vertical(
                    top: Radius.circular(25.r),
                  )),
              child: Column(
                children: [
                  StyleView(),
                  ProductDescriptionView(),
                  QualityView(),
                  SizedBox(
                    height: 16.h,
                  ),
                  Divider(
                    color: Color(0xffB5B5B5),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ColorView(),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizeView(),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 32.w,vertical: 16.h),
        color: Colors.white,
        child: SafeArea(
          child: Row(
            children: [
              Container(
                padding: EdgeInsetsDirectional.all(10.r),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                    borderRadius: BorderRadiusDirectional.circular(10.r)
                  ),
                  child: AppImage('add_to_cart.png',height: 20.h,width: 20.w,)),
              SizedBox(width: 27.w,),
              Expanded(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(10.r))),
                    onPressed: () {},
                    child: Text('Add To Cart',style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat',
                      color: Colors.white
                    ),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
