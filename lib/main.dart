import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false, // 设置导航栏上的debug标签隐藏
      // 设置APP主题
      theme: ThemeData(
          primaryColor: Colors.lightBlue,
          splashColor: Color.fromARGB(0, 0, 0, 0)),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: "这是菜单按钮", // 长按按钮是显示的提示语
          //   onPressed: () => debugPrint("menu button is pressed!"),
          // ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => debugPrint("search button is pressed!"),
            )
          ],
          title: Text(
            "Flutter",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0.0, // 设置导航栏下面的阴影大小
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.sentiment_dissatisfied)),
              Tab(icon: Icon(Icons.flight_takeoff)),
              Tab(icon: Icon(Icons.accessibility_new))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.sentiment_dissatisfied,
                size: 180.0, color: Colors.greenAccent),
            Icon(Icons.flight_takeoff, size: 180.0, color: Colors.greenAccent),
            Icon(Icons.accessibility_new,
                size: 180.0, color: Colors.greenAccent),
          ],
        ),
        // 添加drawer会自动在appBar上添加一个菜单按钮，点击菜单可以打开drawer
        drawer: DrawerDemo(),
      ),
    );
  }
}
