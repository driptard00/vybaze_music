import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:vybaze_music/screens/firstpage.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
      centered: true,
      splash: Image.asset(
        "lib/img/vybazelogo.png", 
        color: Colors.pink,
        height: 200,
        width: 200,
      ),
      nextScreen: const FirstPage(),
      duration: 5000,
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}