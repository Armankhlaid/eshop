import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class SignupDetail extends StatefulWidget {
 String username;
 String email;
 String userid;
 SignupDetail({
   this.username,
   this.email,
   this.userid,
 });
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
  final ntnno= TextEditingController();
  final slogan=TextEditingController();
  final address=TextEditingController();
  final cnic=TextEditingController();
  final phnno=TextEditingController();
  
  @override
  void dispose(){
    super.dispose();
     focus1.dispose();
     focus2.dispose();
     focus3.dispose();
     focus4.dispose();
     focus5.dispose();
     focus6.dispose();
     ntnno.dispose();
     slogan.dispose();
     address.dispose();
     cnic.dispose();
     phnno.dispose();
  }
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
               
               padding: EdgeInsets.only(top: 20,left: 40,right: 160),
               child: Text("Welcome",
               style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
             ),
            Padding(
                padding: EdgeInsets.only(bottom: 20,left: 40),
              child: Text("${widget.username}",
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.w300)
              ),
            ),
              
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          focusNode: focus2,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(hintText: 'NTN no'),
                          controller: ntnno,
                          
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
                          controller: slogan,
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
                          controller: address,
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
                          controller: cnic,
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
                         controller: phnno,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: RaisedButton(
                          onPressed: (){
                             Firestore.instance
                                      .collection('user')
                                      .document(widget.userid)
                                      .setData({
                                    'Name': widget.username,
                                    'Email': widget.email,
                                    'NTN no': ntnno.text,
                                    'Slogan':slogan.text,
                                    'Address':address.text,
                                    'CNIC':cnic.text,
                                    'Phone No':phnno.text
                                    
                                  });
                            Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Dashboard())
                            );
                          },
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
