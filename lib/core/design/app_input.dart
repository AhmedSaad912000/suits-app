import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppInput extends StatefulWidget {
  final String? hintText,prefixIcon,labelText;
  final bool isPassword;
  final double bottomSpace;
  final Color?bgColor;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String? value )? validator;

  const AppInput({super.key, this.hintText, this.prefixIcon,  this.isPassword=false,  this.bottomSpace= 16, this.controller, this.validator, this.bgColor, this.labelText, this.keyboardType });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHide=true;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsetsDirectional.only(bottom: widget.bottomSpace.h),
      child: TextFormField(
        keyboardType:widget.keyboardType ,

        validator:widget.validator,
        controller:widget.controller,
        obscureText:widget.isPassword && isHide ,
        decoration: InputDecoration(
          fillColor: widget.bgColor??Colors.white,
          filled: true,
          prefixIcon:widget.prefixIcon!=null?Padding(
            padding:  EdgeInsetsDirectional.all(16.r),
            child: AppImage(widget.prefixIcon!,height: 24.h,width: 24.w,),
          ):null,
          hintText: widget.hintText,
          labelText:widget.labelText ,
          suffixIcon:widget.isPassword? GestureDetector(
            onTap: (){
              isHide=! isHide;
              setState(() {});
            },
            child: Padding(
              padding:  EdgeInsets.all(16.r),
              child: AppImage('${isHide?"visibility_off.png":"visibility.jpg"}',height: 24.h,width: 24.w,),
            ),
          ):null,

        ),

      ),
    );
  }
}
