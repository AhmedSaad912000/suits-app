part of '../components/../view.dart';

class ColorView extends StatefulWidget {
  const ColorView({super.key});

  @override
  State<ColorView> createState() => _ColorViewState();
}

class _ColorViewState extends State<ColorView> {
  List<Color> list = [
    Color(0xff4E6542),
    Color(0xff323232),
    Color(0xffC11D1D),
    Color(0xff979696),
  ];
  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Color:',
          style: TextStyle(
            fontSize: 16.sp,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: 36.w,
        ),
        ...List.generate(
            list.length,
            (index) => Padding(
                  padding: EdgeInsetsDirectional.only(end: 12.w),
                  child: GestureDetector(
                    onTap: () {
                      currentIndex = index;
                      setState(() {});
                    },
                    child: Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          border: currentIndex == index
                              ? Border.all(color: Colors.black, width: 2.r)
                              : null,
                          shape: BoxShape.circle,
                          color: list[index]),
                    ),
                  ),
                ))
      ],
    );
  }
}
