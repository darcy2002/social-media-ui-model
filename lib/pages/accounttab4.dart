import 'package:flutter/material.dart';

class AccountTab4 extends StatelessWidget {
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
      itemCount: 5,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
         child: Image.asset(myImage[index]),
        );
      },
    );
  }
}