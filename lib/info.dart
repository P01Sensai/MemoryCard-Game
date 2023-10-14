


import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  InfoState createState() => InfoState();
}

class InfoState extends State<Info> {


  @override
  Widget build(BuildContext context){
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
        // title: const Center(child: Text('MemoryCard Game',style: TextStyle(
        //   fontSize: 20,
        //   fontWeight: FontWeight.bold,
        //   color: Colors.amber),)),
        backgroundColor: Colors.black,
        elevation: 10,
      ),
      body: Container(

      ),
    );

  }



}