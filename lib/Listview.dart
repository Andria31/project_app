import'Package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Listview(),
  ));

}

class Listview extends StatelessWidget {

  var name =["food1","food2","food3","food4","food5"];

  var image=["assets/images/burger.jpeg","assets/images/burger.png","assets/images/icecream.jpeg","assets/images/pizza.jpeg","assets/images/food.png"];

  var price=[250,340,780,60,89];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title:Text("listview 2"),
          actions: [
            Icon(Icons.camera_alt),
            SizedBox(width: 50),
            Icon(Icons.search),
            SizedBox(width: 50),
            PopupMenuButton(itemBuilder: (context){
              return[
                PopupMenuItem(child:Text("setting")),
                PopupMenuItem(child: Text("profile")),

              ];
            })

          ],
        ),

        body:ListView(
          children: List.generate(5 , (index) => Card(
            child:ListTile(
              title:Text("item1"),
              subtitle: Text("\$500"),
              leading:CircleAvatar(backgroundImage: AssetImage(image[index]),
              ),
            ),
          )),


        )
    );
  }
}
