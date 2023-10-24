import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  InfoState createState() => InfoState();
}
class InfoState extends State<Info> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset('assets/Screenshot 2023-09-21 114811.jpg'),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 10,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.yellowAccent),
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.yellowAccent),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: const Text(
                  'MINOR PROJECT MEMBERS',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: AnimatedContainer(
                  // decoration: BoxDecoration(
                  //     border: Border.all(width: 2, color: Colors.yellowAccent),
                  //     borderRadius: BorderRadius.circular(10),
                  //     ),
                  width: selected ? 300.0 : 300.0,
                  height: selected ? 300.0 : 300.0,
                  decoration: BoxDecoration(
                    color: selected ? Colors.amberAccent : Colors.blue,
                    //border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(15.0), // Set the border radius here
                  ),
                  alignment:
                  selected ? Alignment.center : AlignmentDirectional.center,
                  duration: const Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                  child: const Text(
                    '1). Pramanshu Prajapati\n2). Aditya Bhardwaj\n3). Harsh Srivastava\n4). Abhay Sharma ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.black),
                  color: Colors.amberAccent,
                ),
                child: const FlutterLogo(size: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class InfoState extends State<Info> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Container(
//           width: 50,
//           height: 50,
//           decoration: const BoxDecoration(
//             shape: BoxShape.circle,
//           ),
//           child: Image.asset('assets/Screenshot 2023-09-21 114811.jpg'),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.black,
//         elevation: 10,
//       ),
//       body: Center(
//         child: Container(
//           padding: const EdgeInsets.all(20),
//           margin: const EdgeInsets.all(10),
//
//           decoration: BoxDecoration(
//             border: Border.all(width: 1,color: Colors.yellowAccent),
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.blue,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(20),
//                 //margin: const EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   border:  Border.all(width: 2, color: Colors.yellowAccent),
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.black
//                 ),
//                 child: const Text(
//                   'MINOR PROJECT MEMBERS', style:  TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color:  Colors.white),
//                 ),
//               ),
//         GestureDetector(
//           onTap: () {
//             setState(() {
//               selected = !selected;
//             });
//           },
//               AnimatedContainer(
//                 width: selected ? 200.0 : 100.0,
//                 height: selected ? 100.0 : 200.0,
//                 color: selected ? Colors.red : Colors.blue,
//                 alignment:
//                 selected ? Alignment.center : AlignmentDirectional.topCenter,
//                 duration: const Duration(seconds: 2),
//                 curve: Curves.fastOutSlowIn,
//                 child: const Text(
//                   '1). Pramanshu Prajapati\n2). Aditya Bhardwaj\n3). Harsh Srivastava\n4). Abhay Sharma ',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//
//               Container(
//                 padding: const EdgeInsets.all(20),
//                 margin: const EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border:  Border.all(width: 2, color: Colors.black),
//                   color: Colors.amberAccent,
//                 ),
//                 child: const FlutterLogo(size: 75),
//               ),
//               // Container(
//               //   padding: const EdgeInsets.all(20),
//               //   margin: const EdgeInsets.all(10),
//               //   decoration: BoxDecoration(
//               //     borderRadius: BorderRadius.circular(10),
//               //     color: Colors.blue,
//               //   ),
//               //   child: const Text(
//               //     'Aditya Bhardwaj',
//               //     style: TextStyle(
//               //       fontSize: 20,
//               //       fontWeight: FontWeight.bold,
//               //       color: Colors.white,
//               //     ),
//               //   ),
//               // ),
//               // Container(
//               //   padding: const EdgeInsets.all(20),
//               //   margin: const EdgeInsets.all(10),
//               //   decoration: BoxDecoration(
//               //     borderRadius: BorderRadius.circular(10),
//               //     color: Colors.blue,
//               //   ),
//               //   child: const Text(
//               //     'Abhay Sharma',
//               //     style: TextStyle(
//               //       fontSize: 20,
//               //       fontWeight: FontWeight.bold,
//               //       color: Colors.white,
//               //     ),
//               //   ),
//               // ),
//               // Container(
//               //   padding: const EdgeInsets.all(20),
//               //   margin: const EdgeInsets.all(10),
//               //   decoration: BoxDecoration(
//               //     borderRadius: BorderRadius.circular(10),
//               //     color: Colors.blue,
//               //   ),
//               //   child: const Text(
//               //     'Harsh Srivastava',
//               //     style: TextStyle(
//               //       fontSize: 20,
//               //       fontWeight: FontWeight.bold,
//               //       color: Colors.white,
//               //     ),
//               //   ),
//               // ),
//               // Add more information here if needed
//             ],
//           ),
//
//         ),
//
//       ),
//
//     );
//   }
// }
