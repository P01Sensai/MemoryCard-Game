import 'dart:io';

import 'package:flutter/material.dart';
import 'level1.dart';
import 'main.dart';

class start extends StatefulWidget {
  const start({Key? key}): super(key: key);

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  // @override
  // void initState() {
  //
  //   super.initState();
  //   _navigatetohome();
  // }
  // _navigatetohome() async {
  //   await Future.delayed(Duration(milliseconds: 150500),() {});
  //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MemoryCardGame()));
  // }
  void closeAppUsingExit() {
    exit(0);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MemoryCardGame()));
              },
              child: const Text('START GAME'),
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
              closeAppUsingExit();

            }, child: const Text('EXIT')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MemoryCardGameLevel1()));
            }, child: const Text('Easy'))

          ],
        ),
      ),
      backgroundColor: Colors.amber,



    );
  }
}
