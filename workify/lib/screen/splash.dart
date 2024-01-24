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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(height:100, width:100, color: Colors.white),

          ],
        ),
      ),
    );
  }
}

