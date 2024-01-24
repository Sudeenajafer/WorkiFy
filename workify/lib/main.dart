import 'package:animated_splash_screen/animated_splash_screen.dart' show AnimatedSplashScreen, SplashTransition;
import 'package:flutter/material.dart';
import 'package:workify/screen/login.dart';

//com.flutterflow.homeU


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,

    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 5000,

      //title: new Text('GeeksForGeeks'),


      splash: const Image(

          image:NetworkImage('https://content.presentermedia.com/content/clipart/00002000/2823/looking_though_binoculars_pc_800_wht.jpg')),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white60,
      //loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,

      navigateAfterSeconds: new SecondScreen(),
    ),

  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("GeeksForGeeks")),
      body: Center(
          child:Text("Home page",textScaleFactor: 2,)
      ),
    );
  }
}

