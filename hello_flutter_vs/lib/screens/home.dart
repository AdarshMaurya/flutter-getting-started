import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      child: Center(
        child: Text(
          "Hello Flutter!",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 36.0),
        ),
      ),
    );
  }

  String sayHello() {
    String hello;
    hello = "hello";
    //var hello = "hello";
    //var hello = 8 ;
    //num myNum = 42;
    // int myNum = 10;
    //num myNum = 3.14;
    //double myNum = 3.14;
    return hello;
  }
}
