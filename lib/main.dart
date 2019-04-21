import 'package:flutter/material.dart';
import 'package:flutter_tutorial/src/MyAnimatedContainer.dart';
import 'package:flutter_tutorial/src/MyAnimatedOpacity.dart';
import 'package:flutter_tutorial/src/MyDrawer.dart';
import 'package:flutter_tutorial/src/MySnackBar.dart';
import 'package:flutter_tutorial/src/MyOrientation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tutorial'),
          ),
          body: Home()),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('AnimatedContainer'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyAnimatedContainer()));
          },
        ),
        ListTile(
          title: Text('AnimatedOpacity'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyAnimatedOpacity()));
          },
        ),
        ListTile(
          title: Text('Drawer'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyDrawer()));
          },
        ),
        ListTile(
          title: Text('SnackBar'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MySnackBar()));
          },
        ),
        ListTile(
          title: Text('화면 방향에 따른 처리'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyOrientation()));
          },
        ),
      ],
    );
  }
}
