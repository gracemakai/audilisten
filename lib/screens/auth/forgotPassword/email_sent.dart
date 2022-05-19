import 'package:audilisten/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/button.dart';
import '../login.dart';

class EmailSentScreen extends StatelessWidget {
  const EmailSentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 0.1.sh,),
              Image.asset("assets/images/logo.png"),
              SizedBox(
                height: 0.02.sh,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email Sent",
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 0.02.sh,
                    ),
                    Text(
                      "We sent an email to your.gmail.com with a link to get back into your account.",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,),
                    ),
                    SizedBox(
                      height: 0.02.sh,
                    ),

                    Center(
                      child: Form(
                          child: SizedBox(
                            width: 0.85.sw,
                            child: Column(
                              children: [

                                DefaultButton(
                                  text: "Cancel",
                                  backgroundColor: Colors.white,
                                  textColor: primarycolor,

                                  onPress: () {
                                    Get.offAll(LoginScreen());
                                  },
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
