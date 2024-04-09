part of '../components/../view.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final list = [
    'https://estet-men.ru/images/catalog/10september/980a1333.jpg',
    'https://static.tildacdn.com/tild3130-3836-4231-a331-336539636637/palto-muzhskoe-sero-.png',
    'https://a.lmcdn.ru/pi/img600x866/M/P/MP002XM09L7P_18493906_2_v1_2x.jpg',
    'https://kanzler-style.ru/upload/iblock/c2b/c2b37cf4edb19226689fe0260f69316d.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 149.w/140.h
        ),
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadiusDirectional.circular(10.r),
            child: Padding(
              padding:  EdgeInsetsDirectional.only(end: 19.w,start: 19.w,top: 19.h),
              child: AppImage(list[index],height: 140.h,width: 149.w,fit: BoxFit.cover,),
            )),
      itemCount:list.length,
    );
  }
}
