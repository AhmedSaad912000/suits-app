import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:suits/core/design/bottom_button.dart';
import 'package:suits/core/design/my_appbar.dart';
import '../../../../../core/design/app_image.dart';
part 'item_model.dart';
part 'components/item.dart';
part 'components/price.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<ItemModel> list=[
    ItemModel(image: 'https://webpulse.imgsmail.ru/imgpreview?mb=webpulse&key=pulse_cabinet-image-e7384d69-9e19-4e0e-8083-40439763af91', title: 'Classic Blazar', size: 'X', price: 90),
    ItemModel(image: 'https://2.bp.blogspot.com/-3_8oGxu0p_k/V0hLa7LUZFI/AAAAAAAAA0U/cqi_eJCjU3oFlTLMbYatxq-K3El-5UF2ACLcB/s1600/How-and-Why-to-Wear-Colorful-Pants.jpg', title: 'Pant', size: 'XL', price: 120),
    ItemModel(image: 'https://mysticalpeace.com/userfiles/149/6707_2.webp', title: 'Shoes', size: 'XX', price: 300),
    ItemModel(image: 'https://cdn.21buttons.com/posts/1080x1109/5449561f1b1c4125871f86983be98df1_1080x1109.jpg', title: 'Classic Blazar', size: '3X', price: 320),
    ItemModel(image: 'https://www.pippa.ie/wp-content/uploads/2019/01/dfbe7a056e2882d27c67843cfbcac91e.jpg', title: 'Classic Blazar', size: '4X', price: 100),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          text: 'My Cards',
        ),
        body: Stack(
          alignment:  AlignmentDirectional.bottomEnd,
            children: [
          ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 20.h,
            ),
            itemBuilder: (context, index) => Item(model: list[index],index: 1,onPress: (value){
              list.removeAt(index);
              setState(() {
              });
            }),
            itemCount:list.length,
          ),
              PriceView(),


        ]),
      bottomNavigationBar: BottomButton(text: 'Proceed to Checkout',)

    );
  }
}
