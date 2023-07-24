import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'pages/pizza_menu_page.dart';
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
   PizzaMenuPage(),
   ScreenTwo(),
   ScreenThree(),
 ];

 GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

 void onTap(int index) {
   setState(() {
     currentIndex = index;
   });
 }

 @override 
 Widget build(BuildContext context) { 
   return Scaffold(
     bottomNavigationBar: CurvedNavigationBar(
       key: _bottomNavigationKey,
       color: Color.fromARGB(255, 241, 34, 19),
       backgroundColor :Colors.white,
       buttonBackgroundColor :Color.fromARGB(255,241 ,34 ,19),
       items:<Widget>[
         Icon(Icons.add, size :30 ,color :Colors.white,),
         Icon(Icons.list,size :30 ,color :Colors.white,),
         Icon(Icons.sunny,size :30,color :Colors.white,)
       ],
       
       onTap:onTap ,
     ),
     
     body:
        pages[currentIndex],
    );     
 }   
}