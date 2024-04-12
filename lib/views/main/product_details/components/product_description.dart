part of  '../components/../view.dart';
class ProductDescriptionView extends StatelessWidget {
  const ProductDescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text('Product Details', style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),)),
        SizedBox(height: 16.h,),
        Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text('cotton sweat shirt with a text point',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff727272)
              ),)),
        SizedBox(height: 16.h,),
      ],
    );
  }
}
