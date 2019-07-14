import 'package:flutter/material.dart';
import 'dashboard.dart';

class MyApp extends StatefulWidget{
  
  _RegisterState createState() => _RegisterState();

}
class _RegisterState extends State<MyApp>{
  @override 
  
  Widget build(BuildContext context){
    return MaterialApp(
      home: Center(
        child: Scaffold(

          backgroundColor: Colors.white,

          appBar: AppBar(
            
            title: Text('Vencus'),
          
          ),

          body: Center(

        child: Container(
          height: 600,
          width: 500,

          child: Column(
          
          
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 40,right: 40,bottom: 40,top: 0),
            child: Text('Register to become Vencus',
              style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(50, 50, 55, 1.0),fontStyle: FontStyle.italic,
            ),
             ),
             ),
           Padding(
              padding: EdgeInsets.only(left: 40,right: 40),
              child: TextFormField(
                decoration: InputDecoration(hintText: 'Name'),
                ),
              ), Padding(
              padding: EdgeInsets.only(left: 40,right: 40),
              child: TextFormField(
                decoration: InputDecoration(hintText: 'NTN no'),
                ),
              ), Padding(
              padding: EdgeInsets.only(left: 40,right: 40),
              child: TextFormField(
                decoration: InputDecoration(hintText: 'Slogan'),
                ),
              ), Padding(
              padding: EdgeInsets.only(left: 40,right: 40),
              child: TextFormField(
                decoration: InputDecoration(hintText: 'Address'),
                ),
              ),
             Padding(
              padding: EdgeInsets.only(left: 40,right: 40),
              child: TextFormField(
                decoration: InputDecoration(hintText: 'CNIC'),
                ),
              ), Padding(
              padding: EdgeInsets.only(left: 40,right: 40),
              child: TextFormField(
                decoration: InputDecoration(hintText: 'Phn no'),
                ),
                ),
              Padding(
              padding: EdgeInsets.only(left: 0,right: 0,top: 30),
              child:   RaisedButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Dashboard()));
                        },
                        child: Text('Register'),
                    padding: EdgeInsets.only(left: 140,right: 140),
                    shape:  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                     color: Color.fromRGBO(255, 100, 40, 1.0),
                        ),

            
             
              ),
               Padding(
              padding: EdgeInsets.only(left: 0,right: 0,top: 5),
              child:   RaisedButton(
                        onPressed: (){},
                        child: Text('Cancel'),
                    padding: EdgeInsets.only(left: 145,right: 145),
                    shape:  new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    
                        ),

            
             
              ),

          ],

          ),
         
        ),
          )
        

        )
        
      ),
    );
  }

}