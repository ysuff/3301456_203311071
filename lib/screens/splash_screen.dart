import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double photoSizex =0;
  double photoSizey =0;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        photoSizex +=360.w;
        photoSizey +=690.h;
      });


    });

    Future.delayed(const Duration(seconds: 3), () {
      (FirebaseAuth.instance.currentUser == null)
          ? Navigator.of(context).pushNamed("/welcome")
          : Navigator.of(context).pushNamed("/app");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 690.h,
        width: 360.w,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.bounceOut,
            width: photoSizex,
            height: photoSizey,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/action.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
      ),
    );
  }
}
