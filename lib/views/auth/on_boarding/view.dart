

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_image.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/auth/after_on_boarding/view.dart';
part 'item_model.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  List<_ItemModel> list=[
    _ItemModel(image: 'on_boarding1.jpg', desc: 'Discover the latest trends and exclusive styles \nfrom our top designers', title: 'Welcome To\nFashion'),
    _ItemModel(image: 'on_boarding2.png', desc: 'Discover a wide range of fashion categories,\n  browse new arrivals and shop your favourites', title: 'Explore & Shop'),
    _ItemModel(image: 'on_boarding3.jpg',  title: 'Hi,Shop Now'),
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
       children: [
         AppImage(list[currentIndex].image,width: double.infinity,fit: BoxFit.fill,),
         Padding(
           padding:  EdgeInsetsDirectional.all(16.r),
           child: Column(
             children: [
               Align(
                 alignment: AlignmentDirectional.centerEnd,
                 child: SafeArea(
                   child: GestureDetector(
                     onTap: (){
                       navigateTo(AfterOnBoardingView());
                     },
                     child: Container(
                       margin: EdgeInsetsDirectional.only(top: 25.h,end: 12.w),
                       padding: EdgeInsetsDirectional.symmetric(vertical: 13.h,horizontal: 25.w),
                       decoration: BoxDecoration(
                         border: Border.all(color: Colors.black),
                         borderRadius: BorderRadiusDirectional.circular(20.r)
                       ),
                       child: Text('Skip',style: TextStyle(
                         fontSize: 15.sp,
                         fontWeight: FontWeight.w400,
                         fontFamily: 'Arial',
                       ),),

                     ),
                   ),
                 ),
               ),
               Spacer(),
               Align(
                 alignment: AlignmentDirectional.centerStart,
                 child: Text(list[currentIndex].title,style: TextStyle(
                   fontSize: 36.sp,
                   fontWeight: FontWeight.w700,
                   color: Colors.white,
                   fontFamily: 'Arial'
                 ),),
               ),
               Align(
                 alignment: AlignmentDirectional.centerStart,
                 child: Text(list[currentIndex].desc,style: TextStyle(
                     fontSize: 14.sp,
                     fontWeight: FontWeight.w400,
                     color: Colors.white,
                     fontFamily: 'Arial'
                 ),),
               ),
               SizedBox(height: 56.h,),
               SizedBox(height: 36.h,),
               Center(
                 child: Row(
                   mainAxisSize: MainAxisSize.min,
                   children: List.generate(3, (index) => Padding(
                     padding:  EdgeInsetsDirectional.only(end: 8.w),
                     child: GestureDetector(
                       onTap: (){
                         currentIndex==index;
                         setState(() {});
                       },
                       child: CircleAvatar(
                         radius:currentIndex==index? 8.r:5.r,
                         backgroundColor: currentIndex==index?Theme.of(context).primaryColor:Color(0xffD9D9D9),
                       ),
                     ),
                   ))
                 ),
               ),
             ],
           ),
         )
       ],
     ),
      floatingActionButton: Row(
        children: [
          if(currentIndex!=0)
          GestureDetector(
            onTap: (){
              currentIndex --;
              setState(() {});
            },
            child: Padding(
              padding:  EdgeInsetsDirectional.all(24.w),
              child: Container(
                padding: EdgeInsetsDirectional.all(15.r),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xff4E6542))
                ),
                child: AppImage('back_left.png',height: 20.h,width: 20.w,),

              ),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: (){
              if(currentIndex<list.length-1){
                currentIndex++;
                setState(() {});
              }else{
                navigateTo(AfterOnBoardingView());
              }
            },
            child: CircleAvatar(
              radius: 25.r,
              backgroundColor: Theme.of(context).primaryColor,
              child: Padding(
                padding:  EdgeInsetsDirectional.all(15.r),
                child: AppImage('back_right.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
