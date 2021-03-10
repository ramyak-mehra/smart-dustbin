import 'package:flutter/material.dart';
import 'package:smartdustbin/utils.dart';
import 'package:smartdustbin/widgets/Home.dart';
import 'package:smartdustbin/widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _idController;
  TextEditingController _passwordController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.shortestSide / 2.5,
            ),
            Image.asset(
              "lib/screens/images/undraw_Login_re_4vu2.jpg",
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 10,
            ),
            LoginPageTextField(
              icon: Icons.login,
              controller: _idController,
              hintText: 'Enter your ID',
              isObsecure: false,
              labelText: 'Login ID',
            ),
            SizedBox(
              height: 10,
            ),
            LoginPageTextField(
              key: UniqueKey(),
              icon: Icons.lock_open,
              controller: _passwordController,
              hintText: 'Enter your Password',
              isObsecure: true,
              labelText: 'Password',
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
              child: Container(
                  color: Theme.of(context).accentColor,
                  width: kwidth(context),
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text('Submit'))),
            )
          ],
        ));
  }
}
