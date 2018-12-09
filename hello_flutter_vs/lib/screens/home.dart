import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      child: Center(
        child: Text(
          sayHello(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 36.0),
        ),
      ),
    );
  }

  String sayHello() {
    String hello;
    DateTime now = new DateTime.now();
    int minute = now.minute;
    int hour = now.hour;
    if (hour < 12) {
      hello = "Good Morning";
    } else if (hour < 18) {
      hello = "Good Afternoon";
    } else {
      hello = "Good Evening";
    }

    String minutes =
        (minute < 10) ? "0" + minute.toString() : minute.toString();
    return "It's now " + hour.toString() + ":" + minutes + ".\n" + hello;
  }
}
