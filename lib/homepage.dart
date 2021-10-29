// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/account.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/reels.dart';
import 'package:flutter_application_1/pages/search.dart';
import 'package:flutter_application_1/pages/shop.dart';

class home extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
home: HomePage() ,

//theme: ThemeData(primarySwatch: Colors.grey ),

    );
  }
}
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int _selectIndex=0;
void _navigateBottomBar(int index){

setState(() {
  _selectIndex=index;
});

}


final List<Widget> _children=[


 userhome(),
usersearch(),
userreels(),
usershop(),
UserAccount(),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: _children[_selectIndex],
 
bottomNavigationBar: BottomNavigationBar(
currentIndex: _selectIndex,
onTap: _navigateBottomBar,



type: BottomNavigationBarType.fixed,

// ignore: prefer_const_literals_to_create_immutables
items: [


  BottomNavigationBarItem(icon: Icon(Icons.home_outlined , color: Colors.black,), label: 'Home'),
   BottomNavigationBarItem(icon: Icon(Icons.search_outlined, color: Colors.black), label: 'Search'), BottomNavigationBarItem(icon: Icon(Icons.video_camera_back_outlined, color: Colors.black), label: 'Shots'),
    BottomNavigationBarItem(icon: Icon(Icons.shop_outlined, color: Colors.black), label: 'Shop'),
     BottomNavigationBarItem(icon: Icon(Icons.person_outlined, color: Colors.black), label: 'Account'),
],


),








    );
  }
}