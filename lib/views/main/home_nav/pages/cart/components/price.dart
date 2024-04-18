part of '../components/../view.dart';
class PriceView extends StatefulWidget {
  const PriceView({super.key});
  @override
  State<PriceView> createState() => _PriceViewState();
}

class _PriceViewState extends State<PriceView> {
  List<_ItemPrice> list=[
    _ItemPrice(title: 'Sub-Total', price: 407.94),
    _ItemPrice(title: 'Delivery Free', price: 25.00),
    _ItemPrice(title: 'Disscount', price: -35.00),

  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsetsDirectional.only(top: 11.h,bottom: 16.h,end: 16.w,start: 16.w),
      color: Colors.white,
      height: 241.h,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Promo Code',
                suffixIcon: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 7.h),
                  child: FilledButton(style: FilledButton.styleFrom(
                    fixedSize: Size.fromHeight(24.h),
                  ),onPressed: (){},child: Text('Apply'),),
                ),
              ),
            ),
            SizedBox(height: 8.h,),
            ...List.generate(list.length, (index) => Padding(
              padding:  EdgeInsets.only(bottom: 8.h),
              child: Row(
                children: [
                  Text(list[index].title,style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      color: Color(0xff858585)
                  ),),
                  Spacer(),
                  Text('\$${list[index].price}',style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',

                  ),)

                ],
              ),
            )),
            DottedLine(
              dashColor: Color(0xffB5B5B5),
            ),
            SizedBox(height: 8.h,),
            Row(
              children: [
                Text('Total Cost',style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    color: Color(0xff858585)
                ),),
                Spacer(),
                Text('\$397.94',style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',

                ),)

              ],
            ),
          ],
        ),
      ),
    );
  }
}
class _ItemPrice{
  final String title;
  final double price;
  _ItemPrice({required this.title,required this.price});

}
