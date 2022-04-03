import 'package:amdb/widgets/amdb_logo_widget.dart';
import 'package:amdb/widgets/primary_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                image: AssetImage("assets/images/yeter.jpg"),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              width: ScreenUtil().screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AMDbLogoWidget.flatLogo(false),
                  PrimaryButtonWidget(title: "Giriş", path: "/login"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
