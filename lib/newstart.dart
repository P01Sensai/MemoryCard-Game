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
        title: const Center(child:  Text('MemoryCard Game')),
      ) ,
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        child: const Text('Welcome to MemoryCard Game'),

      ),



    );

  }
}