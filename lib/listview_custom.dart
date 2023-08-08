import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: ListView_Custom(),
  ));
}


class ListView_Custom extends StatelessWidget {
  const ListView_Custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("listview custom"),
      ),
    body: ListView.custom(childrenDelegate:SliverChildListDelegate(
    List.generate(100, (index) => const Card(
      child: Text("hello"),
    ))
    ) )
    );
  }
}
