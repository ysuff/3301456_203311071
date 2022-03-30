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
      body: SafeArea(
        child: Container(
          width: ScreenUtil().screenWidth,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              AMDbLogoWidget(),
              PrimaryButtonWidget(title: "Giriş", path: "/login"),
            ],
          ),
        ),
      ),
    );
  }
}
