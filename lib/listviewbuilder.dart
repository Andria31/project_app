import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: listview_builder(),
  ));
}


class listview_builder extends StatelessWidget {
  const listview_builder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list view Builder"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child:Center(
              child: Image.asset("assets/images/food.png")
            ),
          );
        },
     itemCount: 30,
    ),
    );
  }
}
