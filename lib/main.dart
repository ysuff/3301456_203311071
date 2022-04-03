import 'package:amdb/screens/app_frame.dart';
import 'package:amdb/screens/films_screen.dart';
import 'package:amdb/screens/home_screen.dart';
import 'package:amdb/screens/login_screen.dart';
import 'package:amdb/screens/profile.dart';
import 'package:amdb/screens/register_screen.dart';
import 'package:amdb/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          builder: (context, widget) {
            ScreenUtil.setContext(context);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,

            );
          },
          initialRoute: "/",
          routes: {
            "/": (context) => WelcomeScreen(),
            "/login": (context) => LoginScreen(),
            "/register": (context) => RegisterScreen(),
            "/app":(context )=>AppFrame(),
          }),
    );
  }
}
