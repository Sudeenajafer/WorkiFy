import 'package:flutter/material.dart';
import 'screen/splash.dart';
import 'package:get/get.dart';


void main(){
  WidgetFlutterBinding.ensureInitialised();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
       home: futureBuilder(
         builder: (context, dataSnapShot){
           return Mysplash();
         }
       )
       // routes: {
         // '/': (context) => Mysplash(),
        //}
    );
  }
}
