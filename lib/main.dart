import 'package:flutter/material.dart';
import './demo/listview_demo.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false, // 设置导航栏上的debug标签隐藏
      // 设置APP主题
      theme: ThemeData(primaryColor: Colors.lightBlue),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.0, // 设置导航栏下面的阴影大小
      ),
      body: ListViewDemo(),
    );
  }
}
