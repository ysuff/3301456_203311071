
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AMDbLogoWidget extends StatelessWidget {
  const AMDbLogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.r),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        width: 200.w,
        height: 100.h,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
        ),
        child: Text(
          "AMDb",
          style: TextStyle(
            color: Colors.black,
            fontSize: 50.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
