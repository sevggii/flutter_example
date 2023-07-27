import 'package:flutter/material.dart';
import 'pages/pizza_menu_page.dart';
import 'pages/screen_three.dart';
import 'pages/screen_two.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MyApp());//
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PizzApp',
      theme: ThemeData(
        primarySwatch: Colors.red,
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

   @override 
   Widget build(BuildContext context) { 
     return Scaffold(
       bottomNavigationBar: CurvedNavigationBar(
        color: Colors.red,
        height: 60,
         backgroundColor: Colors.transparent,
         items: <Widget>[
           Icon(Icons.add, size: 30, color: Colors.white,),
           Icon(Icons.list, size: 30, color: Colors.white,),
           Icon(Icons.compare_arrows, size: 30, color: Colors.white,),
         ],
         onTap:
             (index) { setState(() { currentIndex = index; }); },
       ),
       body:
           IndexedStack(index :currentIndex , children : pages)
      
        
       
     );
}
}