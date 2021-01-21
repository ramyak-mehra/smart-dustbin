import 'package:flutter/material.dart';
import 'package:smartdustbin/utils.dart';
import 'package:smartdustbin/widgets/Home.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: kheight(context) * 2.0,
            child: Column(
              children: [
                Image.asset("lib/screens/images/undraw_Login_re_4vu2.jpg"),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Login ID",
                    hintText: "Enter your Id",
                    icon: Icon(Icons.login),
                    labelStyle: TextStyle(
                      fontSize: 22.0,
                      color: Colors.blueGrey[700],
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      gapPadding: 5.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your Password",
                    icon: Icon(Icons.lock_open),
                    labelStyle: TextStyle(
                      fontSize: 22.0,
                      color: Colors.blueGrey[700],
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      gapPadding: 5.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3.5,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text("Submit"),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )));
  }
}
