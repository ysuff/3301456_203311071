import 'package:amdb/widgets/amdb_logo_widget.dart';
import 'package:amdb/widgets/primary_button_widget.dart';
import 'package:amdb/widgets/primary_text_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  TextEditingController password1Controler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              width: ScreenUtil().screenWidth,
              height: ScreenUtil().screenHeight,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/kayıt_ol.jpg"),
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Container(
                  width: ScreenUtil().screenWidth,
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
                            height: 190.h,
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
                                ),PrimaryTextFormWidget(
                                  hint: "Şire Tekrar",
                                  controller: password1Controler,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 0,
                            height: 50.h,
                          ),
                          const PrimaryButtonWidget(title: "Kayıt Ol", path: "/app"),
                          SizedBox(
                            width: 0,
                            height: 20.h,
                          ),


                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}