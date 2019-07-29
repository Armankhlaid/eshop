import 'package:flutter/material.dart';

class SignupDetail extends StatefulWidget {
  @override
  _SignupDetailState createState() => _SignupDetailState();
}

class _SignupDetailState extends State<SignupDetail> {
  final focus1 = FocusNode();
  final focus2 = FocusNode();
  final focus3 = FocusNode();
  final focus4 = FocusNode();
  final focus5 = FocusNode();
  final focus6 = FocusNode();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
               padding: EdgeInsets.only(top: 20,right: 220),
               child: Text("Buy ",
               style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
             ),
            Padding(
                padding: EdgeInsets.only(bottom: 20,right: 123),
              child: Text("Your Dream",
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.w300)
              ),
            ),
              Padding(
                
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          focusNode: focus1,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(hintText: 'Name'),
                         onEditingComplete: (){
                           FocusScope.of(context).requestFocus(focus2);
                         },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          focusNode: focus2,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(hintText: 'NTN no'),
                          onEditingComplete: (){
                            FocusScope.of(context).requestFocus(focus3);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          focusNode: focus3,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(hintText: 'Slogan'),
                          onEditingComplete: (){
                            FocusScope.of(context).requestFocus(focus4);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          focusNode: focus4,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(hintText: 'Address'),
                          onEditingComplete: (){
                            FocusScope.of(context).requestFocus(focus5);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          focusNode: focus5,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(hintText: 'CNIC'),
                         onEditingComplete: (){
                           FocusScope.of(context).requestFocus(focus6);
                         },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          focusNode: focus6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(hintText: 'Phn no'),
                         
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: RaisedButton(
                          onPressed: (){},
                          child: Text("Register"),
                          shape: new RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30)),
                          padding: EdgeInsets.only(left: 140,right: 140,top: 15,bottom: 15),
                          color: Color.fromRGBO(225, 230, 245, 1.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, right: 0, top: 20),
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text('Cancel'),
                          padding: EdgeInsets.only(left: 145, right: 145,top: 15,bottom: 15),
                          color: Color.fromRGBO(225, 230, 245, 1.0),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                        ),
                      ),
           ],
         ),
       ),

     ),
    );
  }
}
