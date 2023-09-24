import 'package:flutter/material.dart';
//import 'main.dart';
import 'start.dart';


class splash extends StatefulWidget {
  const splash({Key? key}): super(key: key);

  @override
  State<splash> createState() => _splashState();
}
class _splashState extends State<splash> {

  @override
  void initState() {

    super.initState();
    _navigatetohome();
  }
  _navigatetohome() async {
    await Future.delayed( const Duration(milliseconds: 2000),() {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>start()));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer( duration: const Duration(milliseconds: 1500),
              height: 100,
              width: 100,
              child: const ClipOval(
                child: Image(
                  image: NetworkImage('https://picsum.photos/100/100'),
                  fit: BoxFit.cover,

                ),
              ),
            ),
            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('MemoryCard Game', style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,

              )),
            ),
          ],
        ),
      )
    );
  }
}
