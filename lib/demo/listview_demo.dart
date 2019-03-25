import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  
  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(posts[index].title),
          SizedBox(height: 8.0),
          Text(posts[index].author),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length, // 列表总条数
        itemBuilder: _itemBuilder, // 每条数据对应的widget
      );
  }
}