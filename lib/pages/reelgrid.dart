// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

class reelgrid extends StatelessWidget {
  final List<String> userPosts = [];
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
      
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          crossAxisSpacing: 6.0,
          mainAxisSpacing: 6.0),
          itemCount: myImage.length,
      itemBuilder: (context, index) {
        return 
           Padding(
             padding: const EdgeInsets.all(1.0),
             child: Container(
               
                   
                 //   padding: EdgeInsets.all(6),
         decoration: BoxDecoration( image: DecorationImage( 
                   image: AssetImage(myImage[index] , 
                   ) 
                   ,
                     fit: BoxFit.cover,                      // color: ))Colors.green[100]),,
   ),
     border: Border.all(color: Colors.black),
               
   
   ),
   
        
                 
               
             ),
           );
      },
    );
  }
}