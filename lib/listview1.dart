import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView1(),
  ));
}

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "SELECT YOUR FOOD FROM THE MENU!!",
          //   style: GoogleFonts.pacifico(
          //       fontSize: 30,
          //       color: Colors.green,
          //       FonntWeight: FontWeight.bold),)
          )),

          Card(
            child: ListTile(
              title: Text("HamBurger"),
              subtitle: Text("\$190"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/burger.jpeg"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("pizza"),
              subtitle: Text("\$360"),
              trailing: Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/pizza.jpeg"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("biriyani"),
              subtitle: Text("\$200"),
              trailing: Icon(Icons.shopping_cart),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://unsplash.com/photos/0j4bisyPo3M")),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("icecream"),
              subtitle: Text("\$80"),
              trailing: Icon(
                Icons.shopping_cart,
                color: Colors.teal,
              ),
              leading: Image.asset("assets/images/icecream.jpeg"),
            ),
          ),
          // Text("Item 1"),
          // Text("Item 2"),
          // Text("Item 3"),
          // Text("Item 4"),
          // Text("Item 5"),
        ],
      ),
    );
  }
}
