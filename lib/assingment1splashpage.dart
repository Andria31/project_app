import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Splashpage(),
  ));
}

class Splashpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/aasingment.jpeg"))),

        //
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Fresh Foods",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
