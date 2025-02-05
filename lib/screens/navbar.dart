import 'package:flutter/material.dart';
import 'categories.dart';
import 'mainpage.dart';
import 'cart.dart';

class navbar extends StatefulWidget {
  static const String id = 'navigator';

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int currindex = 0;

  List<Widget> pages = [
    Mainpage(),
    categories(),
    cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currindex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart_outlined), label: 'Cart'),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currindex,
        onTap: (index){
          setState(() {
            currindex= index;
          });
        },
      ),
    );
  }
}
