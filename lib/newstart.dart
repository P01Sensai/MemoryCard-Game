import 'dart:io';

import 'package:flutter/material.dart';
import 'level1.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Center(child: Text('MemoryCard Game',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.purple),)),
      ),

      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.fromLTRB(40, 10, 50, 40),
            //color: Colors.lightGreen,
            decoration: BoxDecoration(
              border: Border.all(width: 2,color: Colors.transparent),
              borderRadius: const BorderRadius.all( Radius.circular(10)) ,
              color: Colors.black26,
            ),

            child: const Text(
              'Welcome to MemoryCard Game',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20,),
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

          // Add more containers here
        ],
      ),
    );
  }

}