part of  '../components/../view.dart';
class Item extends StatelessWidget {
  final ItemModel model;
  const Item({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              model.title1,
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
          model.title2,
          style: TextStyle(
              fontSize: 15.sp,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              color: Color(0xff727272)),
        ),
        SizedBox(
          height: 20.h,
        ),
        Divider(
          color: Color(0xffB5B5B5),
        )
      ],
    );
  }
}
