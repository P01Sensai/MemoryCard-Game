import 'dart:io';

import 'package:flutter/material.dart';
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
              child: const Text('START'),
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
              closeAppUsingExit();

            }, child: const Text('EXIT'))

          ],
        ),
      ),



    );
  }
}
