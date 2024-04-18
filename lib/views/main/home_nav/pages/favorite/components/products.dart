part of '../components/../view.dart';
class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final List<_ItemModel> model = [
    _ItemModel(
        image:
            'https://avatars.mds.yandex.net/i?id=67d326e551b37bdfd19151b692fd4fb67df6eece-12373036-images-thumbs&n=13',
        title: 'classic blazar',
        rate: 3.6,
        price: 200,
        isFav: true),
    _ItemModel(
        image:
            'https://avatars.mds.yandex.net/i?id=d305321145a68f4c756aca7d6511234a-5226897-images-thumbs&n=13',
        title: 'classic shoes',
        rate: 4,
        price: 320,
        isFav: false),
    _ItemModel(
        image:
            'https://storage.googleapis.com/ownlocal-platform-production/public/images/background_images/1500/469aa93b343676bcfe0b2ea1a208aac0.jpg',
        title: 'pant',
        rate: 5.0,
        price: 340,
        isFav: true),
    _ItemModel(
        image:
            'https://avatars.mds.yandex.net/i?id=01aca2ac385e7054c5fe6ebc8dd1591e2d309b1d-12471023-images-thumbs&n=13',
        title: 'shirt',
        rate: 6.9,
        price: 500,
        isFav: false),
    _ItemModel(
        image:
            'https://i.pinimg.com/originals/5f/af/b0/5fafb0058562d4ca940ef5611b2ebdf1.jpg',
        title: ' blazar',
        rate: 2.4,
        price: 210,
        isFav: true),
    _ItemModel(
        image:
            'https://avatars.mds.yandex.net/i?id=1eb75639e1e5338e579705882488ab1e2a35ed22-12384153-images-thumbs&n=13',
        title: ' shoes',
        rate: 7.9,
        price: 120,
        isFav: false),
    _ItemModel(
        image:
            'https://www.askandyaboutclothes.com/attachments/6cfc2733-ea17-43fc-b2c2-5b78f3ae5295-jpeg.75181/',
        title: 'classic blazar',
        rate: 9.8,
        price: 250,
        isFav: true
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.h,
        ),
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 19.w),
          child: Column(
            children: [
              SizedBox(
                height: 32.h,
              ),
              ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(10.r),
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    AppImage(
                     model[index].image,
                      height: 104.h,
                      width: 151.w,
                      fit: BoxFit.fill,
                    ),
                    GestureDetector(
                      onTap: (){
                        model[index].isFav =! model[index].isFav;
                        setState(() {});

                      },
                      child: Container(
                        padding: EdgeInsetsDirectional.all(10.r),
                        margin: EdgeInsetsDirectional.only(end: 13.w, top: 10.h),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(.5),
                        ),
                        child: AppImage('favorites.svg',colorFilter:ColorFilter.mode(model[index].isFav?Theme.of(context).primaryColor:Color(0xff676767),  BlendMode.srcIn),),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    model[index].title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Spacer(),
                  AppImage(
                    'star.png',
                    height: 15.h,
                    width: 15.w,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    model[index].rate.toString(),
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        color: Color(0xff979696)),
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    '\$${model[index].price}',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        color: Color(0xffAB94A6)),
                  ))
            ],
          ),
        ),
        itemCount: model.length,
      ),
    );
  }
}


