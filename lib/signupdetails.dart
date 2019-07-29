import 'package:flutter/material.dart';

class SignupDetail extends StatefulWidget {
  @override
  _SignupDetailState createState() => _SignupDetailState();
}

class _SignupDetailState extends State<SignupDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Vencus'),
      ),
     body: Center(
      
       child: Container(
         
         height: 600,
         width: 500,
         child: Column(
          children: <Widget>[
             Padding(
               padding: EdgeInsets.only(top: 60,left: 40),
               child: Text("Buy your dreams",
               style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             ),

              Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(hintText: 'Name'),
                         
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(hintText: 'NTN no'),
                          
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(hintText: 'Slogan'),
                      
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(hintText: 'Address'),
                          
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(hintText: 'CNIC'),
                         
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(hintText: 'Phn no'),
                         
                        ),
                      ),
           ],
         ),
       ),

     ),
    );
  }
}
