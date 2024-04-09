part of  '../components/../view.dart';
class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final list=['All','Blazar','Shirt','Pant','Shoes'];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: (){
              currentIndex=index;
              setState(() {});
            },
            child: Container(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 17.w,vertical: 8.h),
                margin: EdgeInsetsDirectional.only(start: 16.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(20.r),
                    color: currentIndex==index?Theme.of(context).primaryColor:Colors.white
                ),
                child: Text(list[index],style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                    color: currentIndex==index?Colors.white:null
                ),)),
          ),

          itemCount: list.length),
    );
  }
}
