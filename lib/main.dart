import 'package:audilisten/screens/onboading/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'screens/splash/splash_screen.dart';
import 'util/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context) {
          return GetMaterialApp(
            title: "AudiListen",
            theme: theme(),
            debugShowCheckedModeBanner: false,
            home: OnBoardingScreen(),
          );
        }
    );
  }

}