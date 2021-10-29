// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class bubblestories extends StatelessWidget {
  
 final String text;
 
 bubblestories( {required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(

           width: 60,
           height: 60,
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage('images/post2.jpg'), fit: BoxFit.cover),
             border: Border.all(color: Colors.black),
               
             
             
             shape: BoxShape.circle,
             color: Colors.grey[400],
           ),
 

          ),
          SizedBox(
            height: 10
            ,
          ),
          Text(text),
        ],
      ),
    );
  }
}