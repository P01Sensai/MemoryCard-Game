import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'main.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: ClipOval(
                  child: Image(
                    image: NetworkImage('https://picsum.photos/100/100'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // SizedBox(height: 20),
              Text(
                'Splash Screen testing',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      nextScreen: const MemoryCardGame(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 30000,
      backgroundColor: Colors.white,
    );
  }
}
