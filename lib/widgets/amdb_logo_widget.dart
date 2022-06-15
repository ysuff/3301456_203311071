
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
      child: flatLogo(false),
    );
  }

  static Container flatLogo(bool isAppbar) {
    return Container(
      alignment: isAppbar?Alignment.centerLeft:Alignment.center,
      width: isAppbar?null:200.w,
      height: 100.h,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.all(
          Radius.circular(20.r),
        ),
      ),
      child: Center(
        child: Text(
          "AMDb",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 55.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
