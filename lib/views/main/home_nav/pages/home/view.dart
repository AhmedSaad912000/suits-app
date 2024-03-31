import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Medo'),
        actions:  [
          Padding(
            padding:  EdgeInsetsDirectional.only(end: 16.w),
            child: AppImage('notifications.png',height: 40.h,width: 40.w,),
          ),
        ],

      ),
      body: Column(
        children: [

        ],
      ),

    );
  }
}
