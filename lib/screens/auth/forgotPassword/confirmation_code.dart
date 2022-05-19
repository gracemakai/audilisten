import 'package:audilisten/screens/auth/forgotPassword/email_sent.dart';
import 'package:audilisten/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/button.dart';
import '../login.dart';

class ConfirmCodeScreen extends StatelessWidget {
  const ConfirmCodeScreen({Key? key}) : super(key: key);

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
                      "Confirmation Code",
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 0.02.sh,
                    ),
                    Text(
                      "Enter the confirmation code we sent to your.gmail.com",
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
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: TextFormField(
                                    //  controller: amountcontroller,
                                    maxLength: null,
                                    maxLines: null,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                          fontSize: 16.sp,
                                        ),
                                        hintText: "abc.sss.com",
                                        prefixIcon: const Icon(Icons.email),
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        fillColor: Colors.white),
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0.02.sh,
                                ),
                                DefaultButton(
                                  text: "Submit",
                                  onPress: () {
                                    Get.to(() => EmailSentScreen());
                                  },
                                ),
                                SizedBox(
                                  height: 0.02.sh,
                                ),
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
