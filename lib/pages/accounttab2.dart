// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AccountTab2 extends StatelessWidget {
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
      itemCount: 6,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(myImage[index]),
         // child: Container(
          //  decoration:  BoxDecoration(
                                //  image: new DecorationImage(
                                   //   image: AssetImage('images///dev.jpeg'),
                                  //    fit: BoxFit.cover),),
           // color: Colors.pink[100],
          
        );
      },
    );
  }
}