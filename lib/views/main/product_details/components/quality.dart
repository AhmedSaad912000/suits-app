part of '../components/../view.dart';

class QualityView extends StatefulWidget {
  const QualityView({super.key});

  @override
  State<QualityView> createState() => _QualityViewState();
}

class _QualityViewState extends State<QualityView> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quality',
          style: TextStyle(
            fontSize: 16.sp,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: 36.w,
        ),
        Container(
          padding: EdgeInsetsDirectional.symmetric(
              vertical: 4.h, horizontal: 12.5.w),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                  onTap: () {
                    if(counter!=1){
                      counter--;
                      setState(() {});
                    }

                  },
                  child: Icon(
                    Icons.remove,
                    size: 13.sp,
                  )),
              SizedBox(
                width: 16.w,
              ),
              Text('$counter'),
              SizedBox(
                width: 16.w,
              ),
              GestureDetector(
                  onTap: () {
                    if(counter<10){
                      counter++;
                      setState(() {});
                    }
                  },
                  child: Icon(Icons.add, size: 13.sp)),
            ],
          ),
        )
      ],
    );
  }
}
