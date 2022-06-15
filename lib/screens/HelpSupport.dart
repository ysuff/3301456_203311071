import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpSupport extends StatelessWidget {
  const HelpSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 690.h,
          width: 360.w,
          child: Column(
            children: [
              Divider(),
              InkWell(
                onTap: ()=>Navigator.of(context).pushNamed("/kullanici"),
                child: Container(
                  width: 340.w,
                  height: 40.h,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.7),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Text("Kullanıcı Sözleşmesi"),
                    )

                ),
              ),
              Divider(),
              Container(
                width: 340.w,
                height: 40.h,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.7),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Text("Kvkk"),
                )

              ),
            ],
          ),
        ),
      ),
    );
  }
}
