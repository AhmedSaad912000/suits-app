import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:suits/core/design/bottom_button.dart';
import 'package:suits/core/design/my_appbar.dart';
import 'package:suits/core/logic/helper_methods.dart';
import '../../../../../core/design/app_image.dart';
import '../../../checked_out/view.dart';
part 'item_model.dart';
part 'components/item.dart';
part 'components/price.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int counter = 1;
  List<_ItemModel> list = [
    _ItemModel(
        image:
            'https://webpulse.imgsmail.ru/imgpreview?mb=webpulse&key=pulse_cabinet-image-e7384d69-9e19-4e0e-8083-40439763af91',
        title: 'Classic Blazar',
        size: 'X',
        price: 90),
    _ItemModel(
        image:
            'https://2.bp.blogspot.com/-3_8oGxu0p_k/V0hLa7LUZFI/AAAAAAAAA0U/cqi_eJCjU3oFlTLMbYatxq-K3El-5UF2ACLcB/s1600/How-and-Why-to-Wear-Colorful-Pants.jpg',
        title: 'Pant',
        size: 'XL',
        price: 120),
    _ItemModel(
        image: 'https://mysticalpeace.com/userfiles/149/6707_2.webp',
        title: 'Shoes',
        size: 'XX',
        price: 300),
    _ItemModel(
        image:
            'https://cdn.21buttons.com/posts/1080x1109/5449561f1b1c4125871f86983be98df1_1080x1109.jpg',
        title: 'Classic Blazar',
        size: '3X',
        price: 320),
    _ItemModel(
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
          text: 'My Cards',
        ),
        body: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
          ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 20.h,
            ),
            itemBuilder: (context, index) => _Item(
              model: list[index],
              index: index,
              onPress: (value) {
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    title: Text(
                      'Remove from card?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat'),
                    ),
                    contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 6.w,vertical: 12.h),
                    children: [
                      Divider(
                        color: Color(0xffB2B2B2),
                        indent: 28.w,
                        endIndent: 20.w,
                      ),
                      SizedBox(
                        height: 23.h,
                      ),
                      Row(
                        children: [
                          AppImage(
                            list[index].image,
                            height: 50.h,
                            width: 50.w,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Column(
                            children: [
                              Text(
                                list[index].title,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Text(
                                list[index].size,
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat',
                                    color: Color(0xff767676)),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                '\$${list[index].price}',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat',
                                    color: Color(0xffAB94A6)),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    if (counter != 1) {
                                      counter--;
                                      setState(() {});
                                    }
                                  },
                                  child: Ink(
                                    padding: EdgeInsetsDirectional.all(8.r),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadiusDirectional.circular(5.r)),
                                    child: Icon(
                                      Icons.remove,
                                      size: 13.sp,
                                    ),
                                  )),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text('$counter'),
                              SizedBox(
                                width: 12.w,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    if (counter < 10) {
                                      counter++;
                                      setState(() {});
                                    }
                                  },
                                  child: Ink(
                                      padding: EdgeInsetsDirectional.all(8.r),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius:
                                          BorderRadiusDirectional.circular(
                                              5.r)),
                                      child: Icon(
                                        Icons.add,
                                        size: 13.sp,
                                        color: Colors.white,
                                      ))),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      Row(
                        children: [
                          OutlinedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              }, child: Text('Cancel')),
                          SizedBox(
                            width: 29.w,
                          ),
                          FilledButton(
                            onPressed: () {
                              list.removeAt(index);
                              Navigator.pop(context);
                              setState(() {
                                
                              });

                            },
                            child: Text('Yes,Remove'),
                            style:FilledButton.styleFrom(
                                fixedSize: Size.fromHeight( 15.h)
                            ) ,
                          ),

                        ],
                      )
                    ],
                  ),
                );
              },
            ),
            itemCount: list.length,
          ),
          PriceView(),
        ]),
        bottomNavigationBar: BottomButton(
          text: 'Proceed to Checkout',
          onPress: () {
            navigateTo(CheckOutView());
          },
        ));
  }
}
