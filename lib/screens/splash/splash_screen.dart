import 'package:audilisten/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 40.0),
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/logo.png"),
          Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Version 1.0",
                style: TextStyle(fontSize: 12.sp, color: primarycolor),
              )),
        ],
      ),
    );
  }
}
