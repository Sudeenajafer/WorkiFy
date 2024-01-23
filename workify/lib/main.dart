import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

//com.flutterflow.homeU

import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: const Image(
              image:NetworkImage('https://content.presentermedia.com/content/clipart/00002000/2823/looking_though_binoculars_pc_800_wht.jpg')),

          duration: 3000,

          splashTransition: SplashTransition.fadeTransition,
          //pageTransitionType: PageTransitionType.scale,
          backgroundColor: Colors.white60,

          //nextScreen: loginpage(),

        )
    );
  }
}

