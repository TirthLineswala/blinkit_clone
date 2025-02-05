import 'package:flutter/material.dart';
import 'package:practice/screens/homepage.dart';
import 'package:practice/screens/mainpage.dart';
import 'package:practice/screens/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Homepage.id,
      routes: {
        Homepage.id: (context) => Homepage(),
         Mainpage.id: (context)=> Mainpage(),
        navbar.id: (context) => navbar(),
      },

    );
  }
}
