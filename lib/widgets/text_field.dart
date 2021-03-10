import 'package:flutter/material.dart';

class LoginPageTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isObsecure;
  final TextEditingController controller;
  final IconData icon;
  LoginPageTextField(
      {this.controller,
      this.hintText,
      this.icon,
      this.isObsecure,
      this.labelText,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: "Login ID",
          hintText: "Enter your Id",
          icon: Icon(icon),
          labelStyle: TextStyle(
            fontSize: 18.0,
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
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
