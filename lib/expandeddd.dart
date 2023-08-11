import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Expandeddd(),
  ));
}

class Expandeddd extends StatelessWidget {
  const Expandeddd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Expanded(
              child: Image(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1528459801416-a9e53bbf4e17?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmFja2dyb3VuZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"))),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Image(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1531315630201-bb15abeb1653?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFja2dyb3VuZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"))),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Image(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1531685250784-7569952593d2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80"))),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Image(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1679679195912-29d0190805ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80"))),
        ],
      ),
    );
  }
}
