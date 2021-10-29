// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/register.dart';

class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}





class _loginpageState extends State<loginpage> {
  bool isrememberme= false;
  Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 13),
                prefixIcon: Icon(Icons.email, color: Colors.black87),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.black,
                )),
          )),
    ],
  );
}
Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Password',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ]),
          height: 60,
          child: TextField(
           obscureText: true,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 13),
                prefixIcon: Icon(Icons.password_rounded , color: Colors.black87),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.black,
                )),
          )),
    ],
  );
}
Widget buildpasswordforgotbutton(){

return Container(
 alignment: Alignment.centerRight,

child: TextButton(
  onPressed: ()=> print('forget button is pressed'),
  
child: Text('forget password', style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),) ,
            


),

);

}
  
  Widget buildloginbutton(){

 return Container(
 padding: EdgeInsets.symmetric( vertical: 25) ,
 width: double.infinity,
 child:  RaisedButton(
child:  Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

onPressed: (){ Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage(),),
  );},
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

color: Colors.black,




),



 );



  }
  
  Widget  buildRemembercb(){


    return Container(
      height: 20,
      child: Row(
        children: <Widget>[

    Theme(data: ThemeData(unselectedWidgetColor: Colors.white), child: Checkbox( value: isrememberme,
     checkColor: Colors.black,
     activeColor: Colors.white,
     onChanged: (value) {
       setState(() {
         isrememberme= value!;
       });
     }
     
     
     )),
     Text( 
       'Remember Me',
       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold) ,
     )



        ],
      ),
    ); 
  }
  
  
  Widget buildSignupBtn(){
    return GestureDetector(
      onTap: ()=> print('Sign Up Pressed '),
      child:  RichText(text: 
      TextSpan(
        children: [
        TextSpan(
        text: "Don't have an account?",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
         )
      ),
       TextSpan(
        text: "  ",),
       TextSpan(
        text: "Sign Up",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
         )
      ),
      ], ),
      ),
    );
  }
  
   Widget buildregisterbutton(){

 return Container(
 padding: EdgeInsets.symmetric( vertical: 25) ,
 width: double.infinity,
 child:  RaisedButton(
child:  Text(
                        'REGISTER',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

onPressed: (){ Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => register(),),
  );},
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

color: Colors.black,




),



 );



  }
  
  
  
  
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.grey,
                      Color(0x99CAC9CD),
                      Color(0xccCAC9CD),
                      Color(0x22CAC9CD),
                    ])),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 220,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'SignIn',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      buildEmail(),
                      SizedBox( height: 40,),
                      buildPassword(),
                      SizedBox( height: 20,),
                      buildpasswordforgotbutton(),
                       SizedBox( height: 90,),
                         buildRemembercb(),
                       buildloginbutton(),
                       buildSignupBtn(),
                        SizedBox( height: 40,),
                        buildregisterbutton(),
                     
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
