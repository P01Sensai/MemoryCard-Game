

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
      splashTransition: SplashTransition.decoratedBoxTransition,
      pageTransitionType: PageTransitionType.fade,
      duration: 1000,
      backgroundColor: Colors.purpleAccent,


    );
  }
}

// class SScreen2 extends StatelessWidget {
//   const SScreen2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//       splash: FutureBuilder<Image>(
//         future: loadImage('assets/milad-fakurian-PGdW_bHDbpI-unsplash.jpg'),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             // Handle image loading error
//             return Center(child: Text('Error loading splash screen'));
//           } else if (snapshot.hasData) {
//             return snapshot.data!;
//           } else {
//             return Center(child: Text('No Data'));
//           }
//         },
//       ),
//       nextScreen: const start(),
//       splashTransition: SplashTransition.sizeTransition,
//       pageTransitionType: PageTransitionType.fade,
//       duration: 3000,
//       backgroundColor: Colors.purpleAccent,
//     );
//   }
//
//   Future<Image> loadImage(String path) async {
//     final image = Image.asset(path);
//     await precacheImage(image.image, context as BuildContext);
//     return image;
//   }
// }

