import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: StackEx()));
}

class StackEx extends StatelessWidget {
  const StackEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Example"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1478760329108-5c3ed9d495a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGF0bSUyMGNhcmQlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
                ),
              ),
            ),
            Positioned(
              left: 200,
              top: 10,
              child: Container(
                height: 80,
                width: 100,
                child: Text("ANDRIA TERESA FARIA",style: TextStyle(
                  color: Colors.white,fontWeight:FontWeight.bold),
                ),

              ),
            ),

            Positioned(
              right: 200,
              bottom: 10,
              child: Container(
                height:80,
                width: 100,
                child: Text("EXP ON 11/10/2023",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold
                ),),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 100,
                width: 100,
                child:Icon(Icons.attach_email_outlined,size: 80,),
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
