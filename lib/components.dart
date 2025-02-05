import 'package:flutter/material.dart';

class button extends StatelessWidget {
  button({required this.colour, required this.title, required this.onpressed});
  final Color colour;
  final String title;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class uihelper {
  static Customimg({
    required String img,
  }){
    return Image.asset(img);  }
  static Customtext(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      String? fontfamily,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontFamily: fontfamily ?? "regular",
          fontWeight: fontweight,
          color: color),
    );
  }
  static CustomTextfield({required TextEditingController controller, }){
    return Container(
      height: 40,
      width: 325,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        border: Border.all(
          color:Color(0xFFC5C5C5),
        )
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search_outlined),
          hintText: "Search 'icecream' ",
          suffixIcon: Icon(Icons.mic),
            border: InputBorder.none,
        ),
      ),
    );
  }
}
