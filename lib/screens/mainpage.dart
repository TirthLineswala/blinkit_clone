import 'package:flutter/material.dart';
import 'categories.dart';

class Mainpage extends StatefulWidget {
  static const String id = 'mainpage';

  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}
