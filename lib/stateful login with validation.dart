import 'package:flutter/material.dart';
import 'package:project_app/home.dart';


void main(){
  runApp(MaterialApp(
    home: _Login2State(),
  ));
}

class _Login2State extends StatefulWidget {

  @override
  State<_Login2State> createState() => _Login2StateState();
}

class _Login2StateState extends State<_Login2State> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("REGISTER"),
        ),
        body: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/image.jpeg"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Name",
                      labelText: "Name",
                      prefixIcon: Icon(Icons.person)
                  ),
                  validator: (name) {
                    if(name!.isEmpty  ){

                      return "enter your name";
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Phone",
                      labelText: "Phone",
                      prefixIcon: Icon(Icons.phone)
                  ),
                  validator: (phone) {
                    if(phone!.isEmpty   ){

                      return "enter your number";
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Username",
                      labelText: "Username",
                      prefixIcon: Icon(Icons.people)
                  ),
                  validator: (username) {
                    if(username!.isEmpty && username.contains("@") ){

                      return "empty or username doesnt contain @";
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Password",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.password)
                  ),
                  validator: (password) {
                    if(password!.isEmpty && password.length<6  ){

                      return "password must be 6 or more letters";
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Confirm Password",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.password)
                  ),
                  validator: (repassword) {
                    if(repassword!.isEmpty  ){

                      return "Confirm your password";
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton (onPressed: () {

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },

               child: Text("Login")),
  TextButton(onPressed: () {}, child: Text("Not a user? Register here!!!"))
            ],
          ),
        )
    );
  }
}
