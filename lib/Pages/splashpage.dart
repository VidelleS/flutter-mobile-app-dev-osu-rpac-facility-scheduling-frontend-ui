import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => this.goToPage)
      );
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.transparent,
          alignment: Alignment.center,
          child:
             // Image.asset('images/O-Logo.png', scale: 10,),
              Image.asset('images/Rec-Sports.png'),
        ),
      ),
    );
  }
}
