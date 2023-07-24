import 'package:flutter/material.dart';

import 'pages/screen_one.dart';
import 'pages/screen_three.dart';
import 'pages/screen_two.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentIndex = 0;

   final List<Widget> pages = [
     ScreenOne(),
     ScreenTwo(),
     ScreenThree(),
   ];

   int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

   @override 
   Widget build(BuildContext context) { 
     return Scaffold(
  bottomNavigationBar: CurvedNavigationBar(
    key: _bottomNavigationKey,
    color: Color.fromARGB(255, 241, 34, 19),
    backgroundColor: Colors.white,
    items: <Widget>[
      Icon(Icons.add, size: 30, color: Colors.white,),
      Icon(Icons.list, size: 30, color: Colors.white,),
      Icon(Icons.sunny, size: 30, color: Colors.white),
    ],
    onTap: (index) {
      //Handle button tap
    },
  ),
  body: Container(color: Colors.white),
);
    }     
 }
