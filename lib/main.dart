import 'package:flutter/material.dart';
import 'homepage.dart';
import 'login.dart';
void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
home: loginpage() ,


//theme: ThemeData(primarySwatch: Colors.grey ),

    );
  }
}