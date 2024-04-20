import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:suits/core/design/app_image.dart';
import 'package:suits/core/design/my_appbar.dart';
import 'package:suits/core/logic/cache_helper.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/auth/login/view.dart';

import '../../../../sheets/login_out.dart';

part 'components/item_profile.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F7),
      appBar: MyAppBar(
        text: 'Profile',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 19.w),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            CircleAvatar(
              radius: 50.r,
              child: IconButton(
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (context) => SimpleDialog(
                      title: Text(
                        'Choose Image Source',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      children: [
                        TextButton(
                            onPressed: () async {
                              image = await ImagePicker()
                                  .pickImage(source: ImageSource.gallery);
                              Navigator.pop(context);
                            },
                            child: Text('Get From Galary')),
                        TextButton(
                            onPressed: () async {
                              image = await ImagePicker()
                                  .pickImage(source: ImageSource.camera);
                              Navigator.pop(context);
                            },
                            child: Text('Get From Camera')),
                      ],
                    ),
                  );
                  setState(() {});
                },
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
              backgroundImage: image?.path == null
                  ? NetworkImage(
                      'https://scontent.fcai2-2.fna.fbcdn.net/v/t39.30808-6/379012314_1643341429496071_9172896545057651822_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=h_APRDfNLH4Ab4Jg-a6&_nc_ht=scontent.fcai2-2.fna&oh=00_AfAUVtnoAVtGt5cFHsULQnqD9M12J45J9rJWlq7qTyneSQ&oe=661E899B')
                  : FileImage(File(image!.path)) as ImageProvider,
            ),
            SizedBox(
              height: 14.h,
            ),
            Text(
              'Medo Saad',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat'),
            ),
            SizedBox(
              height: 41.h,
            ),
            ItemProfile(icon: 'profile.png', text: 'Your Profile'),
            ItemProfile(icon: 'order.png', text: 'My Order'),
            ItemProfile(icon: 'credit-card.png', text: 'Payment Methods'),
            ItemProfile(icon: 'profile_favs.png', text: 'Wishlist'),
            ItemProfile(icon: 'setting.png', text: 'Setting'),
            ItemProfile(
              icon: 'logout.png',
              text: 'Log Out',
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => LoginOutSheet(
                        onPress: ()async {
                         await CacheHelper.clear();
                      navigateTo(LoginView(),withHistory: false);
                    },)
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
