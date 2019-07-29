import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'signupdetails.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyApp extends StatefulWidget {
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<MyApp> {
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  void dispose() {
    super.dispose();
    username.dispose();
    email.dispose();
    password.dispose();
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
              body: Center(
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
                        padding: EdgeInsets.only(left: 40, right: 40,top: 50),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(hintText: 'User Name'),
                          controller: username,
                        ),
                      ),
                      
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40,top: 30),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(hintText: 'Email'),
                         controller: email,
                        ),
                      ),
                    
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40,top: 30),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(hintText: 'Password'),
                          controller: password,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, right: 0, top: 40),
                        child: RaisedButton(
                          onPressed: () {
                            if (email.text.isEmpty || password.text.isEmpty|| username.text.isEmpty) {
                              print("Field is empty!");
                            } else {
                              createuser();
                             
                              //     MaterialPageRoute(
                              //         builder: (context) => Dashboard()));
                          Navigator.push(context,
                             MaterialPageRoute(
                                builder: (context)=> SignupDetail()));
                            }
                          },
                          child: Text('Next'),
                          padding: EdgeInsets.only(left: 151, right: 151,top: 15,bottom: 15),
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
                          padding: EdgeInsets.only(left: 145, right: 145,top: 15,bottom: 15),
                          color: Color.fromRGBO(225, 230, 245, 1.0),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ))),
    );
  }

  Future<void> createuser() async {
    firebaseAuth.createUserWithEmailAndPassword(
        email: email.text, password: password.text);
    
  }
}
