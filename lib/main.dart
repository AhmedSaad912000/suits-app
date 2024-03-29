import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/views/auth/splash/view.dart';

import 'core/logic/helper_methods.dart';
import 'views/auth/after_on_boarding/view.dart';
import 'views/auth/login/view.dart';
import 'views/auth/on_boarding/view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      startLocale: Locale('en'),
      child: MyApp()
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
       return MaterialApp(
         navigatorKey: navigatorKey,
         localizationsDelegates: context.localizationDelegates,
         supportedLocales: context.supportedLocales,
         locale: context.locale,
         debugShowCheckedModeBanner: false,
            title: 'Suits',
            theme: ThemeData(
              filledButtonTheme: FilledButtonThemeData(style: FilledButton.styleFrom(
                fixedSize: Size.fromHeight(56.h),
                textStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.r),
                )
              )),

            colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffDD8560),primary:Color(0xffDD8560) ),
        useMaterial3: true,
        ),
         home: child,
       );
      },
      child: SplashView(),

    );
  }
}

