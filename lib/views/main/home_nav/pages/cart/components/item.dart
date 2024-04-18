part of '../components/../view.dart';
class _Item extends StatefulWidget {
  final _ItemModel model;
  final int index;
  final void Function(BuildContext)? onPress;
  const _Item({super.key, required this.model, this.onPress, required this.index});
  @override
  State<_Item> createState() => _ItemState();
}
class _ItemState extends State<_Item> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      key:  ValueKey("${widget.index}"),
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            autoClose: true,
            onPressed:widget.onPress,
            backgroundColor: Color(0xffDB505080),
            foregroundColor: Colors.red,
            icon: Icons.delete,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: [
            AppImage(
              widget.model.image,
              height: 143.h,
              width: 122.w,
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              children: [
                Text(
                  widget.model.title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  widget.model.size,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                      color: Color(0xff767676)),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  '\$${ widget.model.price}',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                      color: Color(0xffAB94A6)),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                    onTap: () {
                      if (counter != 1) {
                        counter--;
                        setState(() {});
                      }
                    },
                    child: Ink(
                      padding: EdgeInsetsDirectional.all(8.r),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadiusDirectional.circular(5.r)),
                      child: Icon(
                        Icons.remove,
                        size: 13.sp,
                      ),
                    )),
                SizedBox(
                  width: 12.w,
                ),
                Text('$counter'),
                SizedBox(
                  width: 12.w,
                ),
                GestureDetector(
                    onTap: () {
                      if (counter < 10) {
                        counter++;
                        setState(() {});
                      }
                    },
                    child: Ink(
                        padding: EdgeInsetsDirectional.all(8.r),
                        decoration: BoxDecoration(
                            color: Theme
                                .of(context)
                                .primaryColor,
                            borderRadius:
                            BorderRadiusDirectional.circular(5.r)),
                        child: Icon(
                          Icons.add,
                          size: 13.sp,
                          color: Colors.white,
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}