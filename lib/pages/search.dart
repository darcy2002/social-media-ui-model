// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'exploregrid.dart';
class usersearch extends StatelessWidget {
  const usersearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
backgroundColor: Colors.transparent,
elevation: 0.0,

  title: ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Container(
      height: 50.0,
      padding: EdgeInsets.all(8.0),
      color: Colors.grey[400],
      child: Row( 
        children: [
  Icon(Icons.search,),
  Container(
  
  
  child: Text('search', style: TextStyle( color: Colors.black,)),
  
  
  
  
  
  ),
  
  
  
  
          
        ],
      ),
    ),
  ),
),










      
      body:   exploregrid(),
    );
  }
}