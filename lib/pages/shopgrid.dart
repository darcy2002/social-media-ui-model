// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/util/userpost.dart';

class shopgrid extends StatelessWidget {
  final List userPosts = [ ];
  final List<String>  myImage =[ 
     'images/1.jpg',
  'images/2.jpg',
  'images/3.jpg',
  'images/4.jpg',
  
  'images/5.jpg','images/6.jpg',
   'images/1.jpg',
  'images/2.jpg',
  'images/3.jpg',
  'images/4.jpg',];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0),
      itemBuilder: (context, index) {
        return Padding(
        
          padding: const EdgeInsets.all(2.0),
          child: Container(
             decoration: new BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(myImage[index]),
                                      fit: BoxFit.cover),
                                      border: Border.all(color: Colors.black),),
            //color: Colors.pink[100],
            
          ),
        );
      },
    );
  }
}