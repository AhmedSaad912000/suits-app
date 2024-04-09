part of  '../components/../view.dart';
class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsetsDirectional.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Text('Categary', style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),),
              Spacer(),
              Text('See All', style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montserrat',
                  color: Color(0xff4E6542)

              ),)
            ],
          ),
        ),
        SizedBox(height: 18.h,),
        SizedBox(
          height: 80.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>Padding(
                padding:  EdgeInsetsDirectional.only(start: 16.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(

                      padding: EdgeInsetsDirectional.all(15.r),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Theme.of(context).primaryColor)
                      ),
                      child: AppImage('https://www.usanetwork.com/sites/usablog/files/2023/05/suits-gabriel-macht.jpg',height: 20.h,width: 20.w,),
                    ),
                    Text('Blazar',style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff4D4D4D),
                      fontFamily: 'Montserrat',
                    ),)
                  ],

                ),
              ),
              separatorBuilder: (context, index) => SizedBox(width: 25.w,),
              itemCount: 10),
        ),
        SizedBox(height: 36.h,),


      ],
    );
  }
}
