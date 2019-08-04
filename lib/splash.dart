import 'dart:async';
import 'auth.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:vencus/main.dart';

class Splashpage extends StatefulWidget {
  final BaseAuth auth;
  Splashpage({this.auth});
  @override
  _SplashpageState createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 3),
      ()=>Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (BuildContext context)=>Login(auth: Auth()))
      ));
    
  }
  Widget build(BuildContext context) {
    return Center(
      child:Stack(
       children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: CircleAvatar(
                radius: 50,
                child: Icon(Icons.add_shopping_cart,
                size: 100,),
                ),
            )
      ],
      )
     
    );
  }
}