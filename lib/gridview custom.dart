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
                            image:NetworkImage("https://www.freecodecamp.org/news/content/images/size/w2000/2021/06/w-qjCHPZbeXCQ-unsplash.jpg"))
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
