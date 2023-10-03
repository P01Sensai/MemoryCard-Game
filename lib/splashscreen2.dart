

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


import 'main.dart';
import 'newstart.dart';
import 'start.dart';


// class SScreen2 extends StatelessWidget {
//   const SScreen2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Container(
//       decoration: const BoxDecoration(
//         image: DecorationImage(image: AssetImage('assets/sharon-pittaway-iMdsjoiftZo-unsplash.jpg'
//         ),
//           fit: BoxFit.cover,
//         )
//       ),
//       child: AnimatedSplashScreen(
//
//         splash:  Image.asset('assets/milad-fakurian-PGdW_bHDbpI-unsplash.jpg'),
//         nextScreen: const start(),
//         splashTransition: SplashTransition.decoratedBoxTransition,
//         pageTransitionType: PageTransitionType.leftToRightWithFade,
//         duration: 1000,
//         backgroundColor: Colors.transparent,
//
//
//       ),
//     );
//   }
// }

//different layout
class SScreen2 extends StatelessWidget {
  const SScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/sharon-pittaway-iMdsjoiftZo-unsplash.jpg'),
          fit: BoxFit.cover,

        ),
      ),
      child: AnimatedSplashScreen(
        splash: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          //border: Border.all(),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(1),
              blurRadius: 20,
              spreadRadius: 3,
              offset: const Offset(1,5),

            ),
          ],
        ),
        height: 200,
        child: ClipOval(

          child: Image.asset(
            'assets/Screenshot 2023-09-21 114811.jpg',
            fit: BoxFit.fill,

          ),
        ),
      ),
        nextScreen: const newstart(),
        splashTransition: SplashTransition.decoratedBoxTransition,
        pageTransitionType: PageTransitionType.fade,
        duration: 10000,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}

// class SScreen2 extends StatelessWidget {
//   const SScreen2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//       splash: Stack(
//         children: [
//           // Background Image
//           Image.asset(
//             'assets/pawel-czerwinski-8uZPynIu-rQ-unsplash.jpg',
//             width: double.maxFinite,
//             height: double.maxFinite,
//             fit: BoxFit.cover,
//           ),
//
//           // Content on top of the background
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Your other widgets go here
//                 Image.asset('assets/milad-fakurian-PGdW_bHDbpI-unsplash.jpg'),
//               ],
//             ),
//           ),
//         ],
//       ),
//       nextScreen: const start(),
//       splashTransition: SplashTransition.sizeTransition,
//       pageTransitionType: PageTransitionType.fade,
//       duration: 3000,
//       backgroundColor: Colors.transparent, // Use transparent background for the stack
//     );
//   }
// }


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

