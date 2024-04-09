part of '../components/../view.dart';

class FlashSale extends StatefulWidget {
  const FlashSale({super.key});

  @override
  State<FlashSale> createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  final list=['All','Newest','Popular','Men','Women'];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'Flash Sale',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
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
        )
      ],
    );
  }
}
