import 'package:flutter/material.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "Hello, world!",
      textDirection: TextDirection.ltr,
      style: TextStyle(
          fontSize: 60.0, fontWeight: FontWeight.bold, color: Colors.red),
    ));
  }
}
