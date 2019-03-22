import 'package:flutter/material.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0.0, // 设置导航栏下面的阴影大小
        ),
        body: ListView.builder(
          itemCount: 10, // 列表总条数
          itemBuilder: (BuildContext context, int index) {
            return Text(
              "$index",
              style: TextStyle(fontSize: 25.0, color: Colors.red),
            );
          }, // 每条数据对应的widget
        ),
      ),
      // 设置APP主题
      theme: ThemeData(primaryColor: Colors.lightBlue),
    );
  }
}
