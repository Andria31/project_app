import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: ListView_Seperated(),
  ));
}

class ListView_Seperated extends StatelessWidget {

  var month=["jnry","fbry","mrch","aprl","may","jun","july","august","sep","oct","nov","dec"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('listview separete'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index)
            {
              return
                 Card(
                  child: Text(month[index]),
                );

            },
            separatorBuilder: (context,index){
              if(index==0 && index%4 == 0){
                return const Card(
                  color: Colors.redAccent,
                  child:Text("next month"),
                );
              }else{
                return const SizedBox();
              }
            },
            itemCount: 12));
  }
}
