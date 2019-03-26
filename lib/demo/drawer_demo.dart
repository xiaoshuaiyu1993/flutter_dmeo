import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('潇哥', style: TextStyle(color: Colors.white),),
              accountEmail: Text('xiaoshuaiyu1993@163.com', style: TextStyle(color: Colors.white)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://static.hdslb.com/images/member/noface.gif'),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://goss1.vcg.com/creative/vcg/400/version23/VCG21gic7327717.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
            ListTile(
              title: Text('QQ钱包'),
              leading: Icon(Icons.account_balance_wallet),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('我的收藏'),
              leading: Icon(Icons.collections),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('设置'),
              leading: Icon(Icons.settings),
              onTap: () => Navigator.pop(context),
            ),
          ],
        )),
    );
  }
}