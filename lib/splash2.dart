import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(home: Splash2()));
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //    begin: Alignment.bottomLeft,
          //     end: Alignment.topRight,
          //     colors: [Colors.brown, Colors.white, Colors.brown])
          image:DecorationImage(
            fit:BoxFit.cover,
              image: AssetImage("assets/images/background1.jpeg"))
           ),

          child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.control_camera_sharp,
            //   size:60,
            //   color:Colors.black,
            // ),
            Image.asset(
              "assets/icons/beagle.png",
              height: 200,
              width: 300,
            ),
            const Text(
              "DOG TRAINING & TRICKS",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    ));
  }
}

//to get crt space in coding -> ctrl+alt+l
//to remove yellow lines -> add const by clicking blub -> add const everywere in file
