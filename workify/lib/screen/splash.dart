import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class Mysplash extends StatefulWidget {
  const Mysplash({super.key});
  @override
  State<Mysplash> createState() => _MysplashState();
}

class _MysplashState extends State<Mysplash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(const Duration(milliseconds: 1500), () {});
        ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Myloginpage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://content.presentermedia.com/content/clipart/00002000/2823/looking_though_binoculars_pc_800_wht.jpg',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 10),
              const Text(
                 'Flutter Tutorial',
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                ),
              ),
            ],
        ),
      ),
    );
  }
}

