import 'package:flutter/material.dart';



void main(){
  runApp(MaterialApp(home: GridCustom(),));
}
class GridCustom extends StatelessWidget {
  const GridCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridCustom"),
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(
            List.generate(15, (index) => Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 180,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(fit:BoxFit.fill,
                            image:NetworkImage("https://images.unsplash.com/photo-1681256172482-ae5740706fe6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3NHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"))
                      ),
                    ),
                    const Text(
                      "Item.1",
                      style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text("\$280",style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),

            ))
          )),
    );
  }
}
