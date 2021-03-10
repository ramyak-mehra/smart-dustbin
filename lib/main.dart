import 'package:flutter/material.dart';
import 'package:smartdustbin/screens/login.dart';

import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        accentColor: Color.fromARGB(1, 94, 192, 67),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
