import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignOut extends StatefulWidget {
  const SignOut({Key? key}) : super(key: key);

  @override
  State<SignOut> createState() => _SignOutState();
}

class _SignOutState extends State<SignOut> {
  double photoSizex =0;
  double photoSizey =0;
  Future<void> ornek(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushNamed("/");
  }
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        photoSizex +=360.w;
        photoSizey +=690.h;
      });
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.bounceOut,
            width:   photoSizex,
            height: photoSizey,
            child: InkWell(
              onTap: ()=>{ornek(context)},
              child: Container(
                width: 100.w,
                alignment: Alignment.center,
                height: 50.h,
                decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.9)),
                child: Text("Exit"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
