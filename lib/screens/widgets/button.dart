
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../util/styles.dart';

class DefaultButton extends StatelessWidget {
  var width;
  var height;
  var backgroundColor;
  var radius;
  var text;
  var textColor;
  var fontSize;


  DefaultButton(
      {this.width,
        this.height,
        this.backgroundColor,
        this.radius,
        this.text,
        this.textColor,
        this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 0.9.sw,
      height: height ?? 0.06.sh,
      decoration: BoxDecoration(
          color: backgroundColor ?? primarycolor,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(text ?? "",
          style: TextStyle(color: textColor ?? Colors.white,
              fontSize: fontSize ?? 16.sp),
        ),
      ),
    );
  }
}
