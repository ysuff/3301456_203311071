import 'package:amdb/widgets/amdb_logo_widget.dart';
import 'package:amdb/widgets/primary_button_widget.dart';
import 'package:amdb/widgets/primary_text_form_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  FirebaseFunctions deneme = FirebaseFunctions();
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
              image: AssetImage("assets/images/ana_erkan.jpg"),
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
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 15,
                            primary: Colors.amber,
                          ),
                          onPressed: () => deneme.loginFunc(emailControler.text,
                              passwordControler.text, context,"/app"),
                          child: Text(
                            "Giriş",
                            style:
                                TextStyle(fontSize: 30.sp, color: Colors.black),
                          )),
                      SizedBox(
                        width: 0,
                        height: 20.h,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 15,
                            primary: Colors.amber,
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, "/register"),
                          child: Text(
                            "Kayıt Ol",
                            style:
                                TextStyle(fontSize: 30.sp, color: Colors.black),
                          )),
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
      ],
    ));
  }
}
