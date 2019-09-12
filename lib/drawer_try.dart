import 'package:flutter/material.dart';


class FlutterDrawer extends StatefulWidget {
  @override
  _FlutterDrawerState createState() => _FlutterDrawerState();
}

class _FlutterDrawerState extends State<FlutterDrawer> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Drawer抽屉组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('抽屉组件示例'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: new Text(
                  "白树呐"
                ),
                accountEmail: new Text(
                  "gusumobai@163.com"
                ),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new AssetImage("images/gril_one.jpeg"),
                ),
                onDetailsPressed: (){},
                otherAccountsPictures: <Widget>[
                  new Container(
                    child: Image.asset('images/mycode.jpeg'),

                  )
                ],
              ),
              ListTile(
                leading: new CircleAvatar(child: Icon(Icons.color_lens)),
                title: Text('个性装扮'),
              ),
              ListTile(
                leading: new CircleAvatar(child: Icon(Icons.photo)),
                title: Text('我的相册'),
              ),
              ListTile(
                leading: new CircleAvatar(child: Icon(Icons.wifi)),
                title: Text('免流量特权'),
              )
            ],
          ),
        ),

      ),
    );

  }
}
