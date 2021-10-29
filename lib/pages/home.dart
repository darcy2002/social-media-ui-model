// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/pages/bubble_stories.dart';
import 'package:flutter_application_1/pages/util/userpost.dart';
class userhome extends StatelessWidget {
  final List  <String> people=[
  'devanshi',  
    
      'Akshat',
        'Tanya',
          'Aarifa',
            'Saima',
              'Vaishali',
                'sakshi',
                  'Aditi',
                    'devanshi',
                    
      'Akshat',
        'Tanya',
          'Aarifa',
            'Saima',
              'Vaishali',
                'sakshi',
                  'Aditi',
      'Akshat',
        'Tanya',
          'Aarifa',
            'Saima',
              'Vaishali',
      'Akshat',
        'Tanya',
          'Aarifa',
            'Saima',
              'Vaishali',
                'sakshi',
                  'Aditi',
      'Akshat',
        'Tanya',
          'Aarifa',
            'Saima',
              'Vaishali',
                'sakshi',
                  'Aditi',
      'Akshat',
        'Tanya',
          'Aarifa',
            'Saima',
              'Vaishali',
                'sakshi',
                  'Aditi',
      'Akshat',
        'Tanya',
          'Aarifa',
            'Saima',
              'Vaishali',
                'sakshi',
                  'Aditi',
                'sakshi',
                  'Aditi',


  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        showDialog(context: context, builder: (BuildContext context)
        {
          return AlertDialog(
            title: Text('are you sure to exit'),
            content: Text(' do you wanna go back'),
          actions: <Widget>[
            TextButton(onPressed: ()=> Navigator.pop(context), child: Text('cancel'),),
             TextButton(onPressed: ()=> Navigator.pop(context), child: Text('yes'),),
            
          ],
            
          );
        },);
        return false;
      },

      child: Scaffold(
        resizeToAvoidBottomInset: false 
    ,
    appBar: AppBar(
    toolbarHeight: 80.0,
    
    backgroundColor: Colors.black,
    elevation: 10.0,
    title: ClipRRect(
      borderRadius: BorderRadius.circular(9),
      child:   Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [
      
            Text('Sociobee', style: TextStyle( color: Colors.white ),),
      
      
      
            Row(
      
              children: [
      
                Icon(Icons.mail_outline_outlined),
      
                 Padding(
      
                   padding: const EdgeInsets.all(22.0),
      
                   child: Icon(Icons.share_outlined),
      
                 ),
      
            Icon(Icons.favorite_border_outlined, color: Colors.white,),
      
              ],
      
            ),
      
           
      
      ],
      
      ),
    ),
    
    
    
    ),
    
    
        
        body: Column(
          children: [
    
    
    
           Container(
             height: 130.0, child:
           ListView.builder(
             scrollDirection: Axis.horizontal,
             itemCount: people.length,
             itemBuilder: (context, index){
              return bubblestories(text: people[index]);
            }),
           ),
           Expanded(
             child: ListView.builder(
               itemCount: people.length,
               itemBuilder: (context , index){
             return userposts(name: people[index] );
               }
                 ),
           ),
          ],
    
        ) 
      ),
    );
  }
}