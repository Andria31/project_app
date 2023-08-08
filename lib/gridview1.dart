import 'package:flutter/material.dart';

class Gridview1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('my Gridview'),
      ),
      body: GridView(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        children:List.generate(15, (index) => const Card(
          color: Colors.purpleAccent,
          child: Center(
            child:Icon(Icons.ac_unit_rounded),
          ),
        )),
      ),
    );

  }
}

void main(){
  runApp(MaterialApp(home:Gridview1() ,));
}
