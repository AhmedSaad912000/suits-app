import 'package:shared_preferences/shared_preferences.dart';
class CacheHelper{
  static late SharedPreferences _preferences;
 static Future<void> init()async{
    _preferences=await SharedPreferences.getInstance();
  }
  static bool get isNotFirstTime{
   return _preferences.getBool("isFirstTime")??true;

}
static bool get isAuth{
   return _preferences.getBool("isAuth")??false;

}
static Future<void>  setIsNotFirstTime()async{
  await  _preferences.setBool("isFirstTime", false);

}
static Future<void>  clear()async{
  await  _preferences.clear();
  await setIsNotFirstTime();

}
static Future<void>  setIsAuth()async{
    await  _preferences.setBool("isAuth", true);

}


}