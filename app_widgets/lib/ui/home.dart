import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.center,
      color: Colors.deepOrangeAccent,
      // width: 192.0,
      // height: 96.0,
      // margin: EdgeInsets.only(left:50.0),
      child: Text(
        "Pizza",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 30.0,
          decoration: TextDecoration.none,
        ),
      ),
    ));
  }
}
