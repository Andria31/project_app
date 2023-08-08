import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_app/home.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  String uname = "admin";
  String pwd = "abc123";

  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("login page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: usercontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.people),
                    hintText: "user name must be an email",
                    labelText: "userName"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
              child: TextField(
                controller: passcontroller,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.visibility_off_sharp),
                    hintText: "password",
                    helperText: "password must contain 6 character",
                    labelText: 'password'),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (uname == usercontroller.text &&
                      pwd == passcontroller.text) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));

                    usercontroller.text = "";
                    passcontroller.text = "";
                  } else {
                    // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    //   content: Text("Invalid username or password"),
                    //   backgroundColor: Colors.red,
                    // ));
                    Fluttertoast.showToast(
                        msg: "Invalid username and password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        // timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
