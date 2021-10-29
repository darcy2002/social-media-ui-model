// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class AccountTab3 extends StatelessWidget {
  final List<String> userPosts = [];
  final List<String>  myImage =[ 'images/dev.jpeg',
  'images/dev.jpeg',
  'images/dev2.jpg',
  'images/new.jpeg',
  'images/dev1.jpg','images/dev3.jpg'

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: myImage.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: ( BuildContext context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(myImage[index]),
        );
        // Padding(
          //padding: const EdgeInsets.all(2.0),
        //  child: Container(
          //  decoration: new BoxDecoration(
                               //   image: new ///DecorationImage(
                                     // image: AssetImage('images/dev.jpeg'),
                                    //  fit: BoxFit.cover),),
           // color: Colors.deepPurple[100],
          
        
      },
    );
  }
}