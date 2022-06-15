import 'package:amdb/widgets/amdb_logo_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState(){
    Future.delayed(const Duration(seconds: 1), () {
      setState(()=>{
      axisy+=150,
          axisx+=200,
      });

    });
  }
  double axisx=0;
  double axisy=0;
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
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.bounceOut,
                    width: axisx,
                    height: axisy,
                    child: AMDbLogoWidget.flatLogo(false),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 15,
                        primary: Colors.amber,
                      ),
                      onPressed: () => Navigator.pushNamed(context, "/login"),
                      child: Text(
                        "Giriş",
                        style: TextStyle(fontSize: 30.sp, color: Colors.black),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
