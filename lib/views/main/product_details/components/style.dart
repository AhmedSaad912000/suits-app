part of  '../components/../view.dart';
class StyleView extends StatelessWidget {
  const StyleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Famale Style',
              style: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  color: Color(0xffA4A4A4)
              ),
            ),
            Spacer(),
            AppImage(
              'star.png',
              height: 15.h,
              width: 15.w,
            ),
            SizedBox(width: 2.w,),
            Text('5.0', style: TextStyle(
                fontSize: 12.sp,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                color: Color(0xff979696)
            ),)
          ],
        ),
        SizedBox(height: 16.h,),
        Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text('Classic Blazar', style: TextStyle(
              fontSize: 20.sp,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,

            ),)),
        SizedBox(height: 16.h,),
      ],
    );
  }
}
