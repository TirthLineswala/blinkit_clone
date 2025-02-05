import 'package:flutter/material.dart';
import 'package:practice/components.dart';

class cart extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 40,
        ),//upper whiteline space
        Stack(
          children: [
            Container(
              height: 190.0,
              width: double.infinity,
              color: Colors.yellowAccent.shade700,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      uihelper.Customtext(
                          text: 'Blinkit in',
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 20.0,
                          fontfamily: "bold"),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      uihelper.Customtext(
                          text: '16 Minutes',
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 26.0,
                          fontfamily: "bold"),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      uihelper.Customtext(
                          text: 'HOME',
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 20.0),
                      uihelper.Customtext(
                          text: '- Address',
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 20.0),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  uihelper.CustomTextfield(
                    controller: searchcontroller,
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 100,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        uihelper.Customimg(img: 'cart.png'),
        uihelper.Customtext(
            text: 'Reodering will be easy',
            color: Color(0xFF000000),
            fontweight: FontWeight.bold,
            fontsize: 25.0),
        uihelper.Customtext(
            text: 'Items you order will show up her so you can buy',
            color: Color(0xFF000000),
            fontweight: FontWeight.normal,
            fontsize: 14.0),
        uihelper.Customtext(
            text: 'them again easily',
            color: Color(0xFF000000),
            fontweight: FontWeight.normal,
            fontsize: 14.0),
        SizedBox(
          height: 30.0,
        ),
        Row(
          children: [
            SizedBox(
              width: 20.0,
            ),
            uihelper.Customtext(
                text: 'Bestsellers',
                color: Color(0xFF000000),
                fontweight: FontWeight.bold,
                fontsize: 20.0),
          ],
        ),
        SizedBox(height: 10.0,),
        Row(
          children: [
            SizedBox(width: 20.0,),
            uihelper.Customimg(img: "milk.png"),
          ],
        )
      ],
    ));
  }
}
