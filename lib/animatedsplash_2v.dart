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
      splash: Stack(
        children: [
          Center(
            child: Image.network(
              'https://picsum.photos/100/100',
              fit: BoxFit.cover,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX:0.5, sigmaY: 0.5),
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
        ],

      ),
      nextScreen: const start(),
      splashTransition: SplashTransition.rotationTransition,
      duration: 3000,
      backgroundColor: Colors.white,
    );
  }
}
