import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


import 'main.dart';
import 'start.dart';


class SScreen2 extends StatelessWidget {
  const SScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return AnimatedSplashScreen(
      splash:  Image.asset('assets/milad-fakurian-PGdW_bHDbpI-unsplash.jpg'),
      nextScreen: const start(),
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
      duration: 3000,
      backgroundColor: Colors.lightBlue,

    );
  }
}
