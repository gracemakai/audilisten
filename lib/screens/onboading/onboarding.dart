import 'package:audilisten/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final List images = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            width: 1.sw,
            height: 0.4.sh,
            child: Image.asset("assets/images/background_pattern.png",
              fit: BoxFit.fitWidth,
               ),
          ),
          Column(
            children: [
              SizedBox(
                width: 1.sw,
                  height: 0.3.sh,
                  child: Image.asset("assets/images/people.png")),
              SizedBox(height: 0.01.sh,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 0.02.sh,
                    width: 0.04.sw,
                    decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.circular(30)
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
