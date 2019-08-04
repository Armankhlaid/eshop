import 'package:flutter/material.dart';
import 'package:vencus/auth.dart';
import 'signupdetails.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyApp extends StatefulWidget {
  final BaseAuth auth;
  
  MyApp({this.auth});
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<MyApp> {
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final formkey = new GlobalKey<FormState>();
  bool valid = false;
  final focus1 = FocusNode();
  final focus2 = FocusNode();
  final focus3 = FocusNode();

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  bool fromvalidation() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      valid = true;
      return valid;
    } else {
      print("Validation failed");
      valid = false;
      return valid;
    }
  }

  @override
  void dispose() {
    super.dispose();
    username.dispose();
    email.dispose();
    password.dispose();
    focus1.dispose();
    focus2.dispose();
    focus3.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
          child: Scaffold(
              resizeToAvoidBottomPadding: false,
              backgroundColor: Colors.white,
              appBar: AppBar(
                title: Text('Vencus'),
              ),
              body: Form(
                key: formkey,
                child: Center(
                  child: Container(
                    height: 600,
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: 40, right: 40, bottom: 0, top: 90),
                          child: Text(
                            'Register to become Vencus',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(50, 50, 55, 1.0),
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 40, right: 40, top: 50),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            focusNode: focus1,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(hintText: 'User Name'),
                            controller: username,
                            validator: (val) =>
                                val.isEmpty ? "User name Empty" : null,
                            onEditingComplete: () {
                              FocusScope.of(context).requestFocus(focus2);
                            },
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 40, right: 40, top: 30),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            focusNode: focus2,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(hintText: 'Email'),
                            controller: email,
                            validator: (val) =>
                                val.isEmpty ? "Email Empty" : null,
                            onEditingComplete: () {
                              FocusScope.of(context).requestFocus(focus3);
                            },
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 40, right: 40, top: 30),
                          child: TextFormField(
                            focusNode: focus3,
                            obscureText: true,
                            decoration: InputDecoration(hintText: 'Password'),
                            validator: (val) => val.isEmpty
                                ? "Password Empty"
                                : val.length < 8
                                    ? "Password is too short"
                                    : null,
                            controller: password,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0, right: 0, top: 40),
                          child: RaisedButton(
                            onPressed: () async {
                              bool check = fromvalidation();

                              if (check == false) {
                                print("validation error");
                              } else {
                                
                                String user = await widget.auth
                                    .createUserWithEmailAndPassword(
                                        email.text, password.text);
                                print("$user");
                                
                                if (user != null) {
                                  // Firestore.instance
                                  //     .collection('user')
                                  //     .document(user)
                                  //     .setData({
                                  //   'Name': username.text,
                                  //   'Email': email.text,
                                    
                                  // });

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignupDetail(email: email.text,username: username.text,userid:user,)));
                                }
                              }
                            },
                            child: Text('Next'),
                            padding: EdgeInsets.only(
                                left: 151, right: 151, top: 15, bottom: 15),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            color: Color.fromRGBO(225, 230, 245, 1.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0, right: 0, top: 20),
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text('Cancel'),
                            padding: EdgeInsets.only(
                                left: 145, right: 145, top: 15, bottom: 15),
                            color: Color.fromRGBO(225, 230, 245, 1.0),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))),
    );
  }


}
