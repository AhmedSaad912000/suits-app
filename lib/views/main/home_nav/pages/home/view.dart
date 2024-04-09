import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_image.dart';
part 'components/categories.dart';
part 'components/new_collection.dart';
part 'components/flash_sale.dart';
part 'components/products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F7),
      appBar: AppBar(
        title: Text('Hello Medo'),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 16.w),
            child: AppImage('notifications.png', height: 40.h, width: 40.w,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NewCollection(),
            Categories(),
            FlashSale(),
            Products(),
        
        
        
        
        
        
        
          ],
        ),
      ),

    );
  }
}
