import 'dart:io';

import 'package:flutter/material.dart';
import 'info.dart';
import 'level1.dart';
import 'level2.dart';
import 'level3.dart';
import 'main.dart';

class newstart extends StatefulWidget {
  const newstart({Key? key}): super(key: key);

  @override
  State<newstart> createState() => _startState();
}

class _startState extends State<newstart> {

  void closeAppUsingExit() {
    exit(0);
  }
  void appInfo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Info()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Container(
          width: 50, // Specify the width as needed
          height: 50, // Specify the height as needed
          decoration: const BoxDecoration(
            shape: BoxShape.circle,

          ),

          child: Image.asset('assets/Screenshot 2023-09-21 114811.jpg'),
        ),
        centerTitle: true,
        // title: const Center(child: Text('MemoryCard Game',style: TextStyle(
        //   fontSize: 20,
        //   fontWeight: FontWeight.bold,
        //   color: Colors.amber),)),
        backgroundColor: Colors.black,
        elevation: 10,
      ),



      body: Column(

        //mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(50, 10, 50, 40),
            //color: Colors.lightGreen,
            decoration: BoxDecoration(
              border: Border.all(width: 2,color: Colors.transparent),
              borderRadius: const BorderRadius.all( Radius.circular(10)) ,
              color: Colors.lightBlue,
              boxShadow: const [
                BoxShadow(
                  color: Colors.white54,
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0,4),
                )
              ]
            ),

            child: const Text(
              'Welcome to MemoryCard Game',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),

          ),

          Container(

            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.fromLTRB(40, 10, 50, 40),
            //color: Colors.blue,

            child: const Text(
              'Choose Difficulty Level',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

          ),
          Container(
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            //color: Colors.blue,
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.white),
              borderRadius: const BorderRadius.all( Radius.circular(10)) ,
              color: Colors.black,
              boxShadow: const [
                BoxShadow(
                  color: Colors.lightBlueAccent,
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0,4),
                )
              ]
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const MemoryCardGame()));
                    },
                    child: const Text('Instant Start'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.fromLTRB(40, 10, 50, 40),
            //color: Colors.blue,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/alexander-grey-62vi3TG5EDg-unsplash.jpg'),
                fit: BoxFit.cover,
              ),
                border: Border.all(width: 1,color: Colors.white),
                borderRadius: const BorderRadius.all( Radius.circular(10)) ,
                color: Colors.amber,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.lightBlueAccent,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0,4),
                  )
                ]
            ),

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MemoryCardGameLevel1()));
                  }, child: const Text(' Easy ')),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MemoryCardLevel2()));
                  }, child: const Text('Medium')),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MemoryCardLevel3()));
                  }, child: const Text('Hard'))

                ],
              ),
            ),

            // child: const Text(
            //   'Choose Difficulty Level',
            //   style: TextStyle(
            //     fontSize: 16,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.white,
            //   ),
            // ),

          ),

          // Add more containers here
          const SizedBox(height: 10,),
          Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      // Handle back button press
                      Navigator.of(context).pop();
                      closeAppUsingExit();

                    },
                    child: const Icon(Icons.arrow_back),
                    backgroundColor: Colors.amber,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      // Handle back button press
                      Navigator.of(context).pop();
                      appInfo();
                    },
                    child: const Icon(Icons.info),
                    backgroundColor: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
          // Positioned(
          //   bottom: 20, // Adjust the bottom value as needed
          //   right: 20, // Adjust the right value as needed
          //   child: FloatingActionButton(
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //       Navigator.push(context, MaterialPageRoute(builder: (context) => Info()));
          //     },
          //     child: Icon(Icons.arrow_back),
          //     backgroundColor: Colors.amber,
          //   ),
          // ),
          //
          // Positioned(
          //   bottom: 20, // Adjust the bottom value as needed
          //   left: 20, // Adjust the left value as needed
          //   child: FloatingActionButton(
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //       closeAppUsingExit();
          //     },
          //     child: Icon(Icons.info),
          //     backgroundColor: Colors.amber,
          //   ),
          // ),
      // Align(
      //   alignment: Alignment.bottomRight,
      //   child: Padding(
      //     padding: const EdgeInsets.all(20.0),
      //     child: FloatingActionButton(
      //       onPressed: () {
      //         // Handle back button press
      //         Navigator.of(context).pop();
      //         Navigator.push(context, MaterialPageRoute(builder: (context)=>Info()));
      //       },
      //       child: Icon(Icons.arrow_back),
      //       backgroundColor: Colors.amber,
      //     ),
      //   ),
      // ),
      //     Align(
      //       alignment: Alignment.bottomLeft,
      //       child: Padding(
      //         padding: const EdgeInsets.all(20.0),
      //         child: FloatingActionButton(
      //           onPressed: () {
      //             // Handle back button press
      //
      //             Navigator.of(context).pop();
      //             closeAppUsingExit();
      //           },
      //           child: Icon(Icons.info),
      //           backgroundColor: Colors.amber,
      //         ),
      //       ),
      //     ),
        ],
      ),
    );
  }

}