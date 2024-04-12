part of '../components/../view.dart';

class SizeView extends StatefulWidget {
  const SizeView({super.key});

  @override
  State<SizeView> createState() => _SizeViewState();
}

class _SizeViewState extends State<SizeView> {
  List<String> list = ['S', 'M', 'L', 'XL'];
  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Size:',
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
                      padding: EdgeInsetsDirectional.all(8.r),
                      decoration: BoxDecoration(
                        border: currentIndex == index
                            ? Border.all(color: Colors.black, width: 2.r)
                            : null,
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.grey[300],
                      ),
                      child: Text(
                        list[index],
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                ))
      ],
    );
  }
}
