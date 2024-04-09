part of  '../components/../view.dart';
class NewCollection extends StatelessWidget {
  const NewCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(bottom: 28.h),
      child: Container(
        margin: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
        padding: EdgeInsetsDirectional.symmetric(
            vertical: 16.h, horizontal: 28.h),
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text('New Collection', style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Inter',

                  ),),
                  SizedBox(height: 5.h,),
                  Text('Disscount 50% for\nthe first transaction',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Color(0xffA1A8B0),
                    ),),
                  SizedBox(height: 18.h,),
                  ElevatedButton(style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(
                              10.r)
                      ),
                      backgroundColor: Theme
                          .of(context)
                          .primaryColor
                  ),
                      onPressed: () {},
                      child: Text('Shop Now', style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Inter',
                      ),))
                ],

              ),
            ),
            Expanded(
              child: AppImage(
                'https://img.freepik.com/free-vector/choosing-clothes-concept-illustration_114360-3222.jpg?size=626&ext=jpg',
                height: 104.h, width: 110.w,),
            )

          ],
        ),

      ),
    )

    ;
  }
}
