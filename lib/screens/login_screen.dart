import 'package:amdb/widgets/amdb_logo_widget.dart';
import 'package:amdb/widgets/primary_button_widget.dart';
import 'package:amdb/widgets/primary_text_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
   TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Container(
            width: ScreenUtil().screenWidth,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 70.h,
                ),
                const AMDbLogoWidget(),
                SizedBox(
                  height: 100.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 300.w,
                      height: 120.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryTextFormWidget(
                            hint: "Email",
                            controller: emailControler,
                          ),
                          PrimaryTextFormWidget(
                            hint: "Şifre",
                            controller: passwordControler,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 0,
                      height: 50.h,
                    ),
                    const PrimaryButtonWidget(title: "Giriş", path: "/login"),
                    SizedBox(
                      width: 0,
                      height: 20.h,
                    ),
                    const PrimaryButtonWidget(
                        title: "Kayıt Ol", path: "/login"),
                    SizedBox(
                      width: 0,
                      height: 70.h,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
