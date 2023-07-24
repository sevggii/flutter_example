import 'package:flutter/material.dart';

import 'pages/screen_one.dart';
import 'pages/screen_three.dart';
import 'pages/screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Home'),
       ),
       body: Center(
         child: Text('Welcome to my app!'),
       ),
       
       bottomNavigationBar:
          BottomNavigationBar(
            currentIndex : currentIndex ,
             onTap:(index)=>setState(()=>currentIndex=index),
             items:[
               BottomNavigationBarItem(icon :Icon(Icons.home),label:'Home') , 
               BottomNavigationBarItem(icon :Icon(Icons.search),label:'Search'), 
                BottomNavigationBarItem(icon :Icon(Icons.person),label:'Profile')
              ] ,  
           ),

     );
   }
}