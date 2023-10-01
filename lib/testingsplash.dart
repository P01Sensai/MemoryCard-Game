import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


import 'main.dart';
import 'start.dart';


class SScreen3 extends StatelessWidget {
  const SScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/pawel-czerwinski-8uZPynIu-rQ-unsplash.jpg'),
          fit: BoxFit.cover,
          opacity: 100,

        ),
      ),
      child: Center(
        child: Container(

          width: 120, // Specify the width as needed
          height: 120, // Specify the height as needed
          decoration: BoxDecoration(

            shape: BoxShape.circle,
            //border: Border.all(),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                blurRadius: 20,
                spreadRadius: 1,
                offset: const Offset(0, 5),

              ),
            ],
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/milad-fakurian-PGdW_bHDbpI-unsplash.jpg',
              fit: BoxFit.cover,

            ),
          ),
        ),
      ),
    );
  }
}
// try 2 no imgae logo is roatating
// class SScreen3 extends StatelessWidget {
//   const SScreen3({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 200, // Specify the width as needed
//         height: 200, // Specify the height as needed
//         decoration: BoxDecoration(
//           shape: BoxShape.circle, // Makes the container circular
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.5),
//               blurRadius: 10,
//               offset: Offset(0, 5),
//             ),
//           ],
//         ),
//         child: ClipOval(
//           child: TweenAnimationBuilder(
//             duration: Duration(seconds: 2),
//             tween: Tween<double>(begin: 0, end: 360),
//             builder: (BuildContext context, double angle, Widget? child) {
//               return Transform.rotate(
//                 angle: angle,
//                 child: child,
//               );
//             },
//             child: Image.asset(
//               'assets/milad-fakurian-PGdW_bHDbpI-unsplash.jpg',
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

