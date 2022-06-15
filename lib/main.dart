import 'package:amdb/screens/HelpSupport.dart';
import 'package:amdb/screens/app_frame.dart';
import 'package:amdb/screens/kullanici_sozlesmesi.dart';
import 'package:amdb/screens/login_screen.dart';
import 'package:amdb/screens/most_watched_movies.dart';
import 'package:amdb/screens/register_screen.dart';
import 'package:amdb/screens/security.dart';
import 'package:amdb/screens/sign_out.dart';
import 'package:amdb/screens/splash_screen.dart';
import 'package:amdb/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
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
      builder: (BuildContext ctx,widget) => MaterialApp(
          debugShowCheckedModeBanner: false,
          builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,

            );
          },
          initialRoute: "/",
          routes: {
            "/welcome": (context) => WelcomeScreen(),
            "/":(context)=>SplashScreen(),
            "/help":(context)=>HelpSupport(),
            "/kullanici":(context)=>KullaniciSozlesmesi(),
            "/security":(context)=>Security(),
            "/mostwatched":(context)=>More_Watched_Movies(),
            "/exit":(context)=>SignOut(),
            "/login": (context) => LoginScreen(),
            "/register": (context) => RegisterScreen(),
            "/app":(context )=>AppFrame(),
          }),
    );
  }
}
