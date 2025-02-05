import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:practice/screens/navbar.dart';
import 'mainpage.dart';
import 'package:practice/components.dart';

class Homepage extends StatefulWidget {
  static const String id = 'homepage';

  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade700,
      body: Center(
        child: Container(
          padding:
              const EdgeInsets.symmetric(vertical: 200.0, horizontal: 90.0),
          constraints: const BoxConstraints.expand(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 67.0),
                      children: <TextSpan>[
                        TextSpan(text: 'blink'),
                        TextSpan(
                          text: 'it',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 90.0,
                ),
                button(
                    colour: Colors.blueGrey,
                    title: 'Order Items.',
                    onpressed: () {
                      Navigator.pushNamed(context, navbar.id);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
