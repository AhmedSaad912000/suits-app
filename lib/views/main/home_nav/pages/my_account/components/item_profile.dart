part of '../components/../view.dart';
class ItemProfile extends StatelessWidget {
  final String icon,text;
  final void Function()? onTap;
  const ItemProfile({super.key, required this.icon, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsetsDirectional.only(bottom: 20.h),
      child: GestureDetector(
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(5.r)
          ),
          child: ListTile(
            leading: AppImage(icon,height: 20.h,width: 20.w,),
            title: Text(text,style: TextStyle(
                fontSize: 15.sp,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600
            ),),
          ),
        ),
      ),
    );
  }
}
