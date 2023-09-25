import 'dart:ui';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'start.dart';


class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://picsum.photos/100/100',
              width: 100, height: 100,
            ),
          ],
        ),
      ),
      nextScreen: const start(),
      splashTransition: SplashTransition.rotationTransition,
      duration: 3000,
      backgroundColor: Colors.transparent, // Use transparent background
    );
  }






}
