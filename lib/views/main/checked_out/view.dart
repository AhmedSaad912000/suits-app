import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/app_image.dart';
import 'package:suits/core/design/bottom_button.dart';
import 'package:suits/core/design/my_appbar.dart';

part 'item_model.dart';

part 'components/item.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({super.key});

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  List<ItemModel> list = [
    ItemModel(
        image:
            'https://webpulse.imgsmail.ru/imgpreview?mb=webpulse&key=pulse_cabinet-image-e7384d69-9e19-4e0e-8083-40439763af91',
        title: 'Classic Blazar',
        size: 'X',
        price: 90),
    ItemModel(
        image:
            'https://2.bp.blogspot.com/-3_8oGxu0p_k/V0hLa7LUZFI/AAAAAAAAA0U/cqi_eJCjU3oFlTLMbYatxq-K3El-5UF2ACLcB/s1600/How-and-Why-to-Wear-Colorful-Pants.jpg',
        title: 'Pant',
        size: 'XL',
        price: 120),
    ItemModel(
        image: 'https://mysticalpeace.com/userfiles/149/6707_2.webp',
        title: 'Shoes',
        size: 'XX',
        price: 300),
    ItemModel(
        image:
            'https://cdn.21buttons.com/posts/1080x1109/5449561f1b1c4125871f86983be98df1_1080x1109.jpg',
        title: 'Classic Blazar',
        size: '3X',
        price: 320),
    ItemModel(
        image:
            'https://cdn.21buttons.com/posts/1080x1109/5449561f1b1c4125871f86983be98df1_1080x1109.jpg',
        title: 'Classic Blazar',
        size: '3X',
        price: 320),
    ItemModel(
        image:
            'https://www.pippa.ie/wp-content/uploads/2019/01/dfbe7a056e2882d27c67843cfbcac91e.jpg',
        title: 'Classic Blazar',
        size: '4X',
        price: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        text: 'Chekout',
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 16.w, top: 40.h,end: 16.w),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Shipping Address',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat'),
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            Row(
              children: [
                AppImage(
                  'home_location.png',
                  height: 18.h,
                  width: 18.w,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Dakahlia, Mansoura, Al-Gamaa District,\nAl-Sabahi Street',
              style: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  color: Color(0xff727272)),
            ),
            SizedBox(
              height: 40.h,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Order List',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat'),
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Item(model: list[index]),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 16.h,
                      ),
                  itemCount: list.length),
            ),
          ],
        ),
      ),
        bottomNavigationBar: BottomButton( text: 'Continue to payment',)
    );
  }
}
