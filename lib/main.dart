import 'package:flutter/material.dart';
import 'signup.dart';
import 'dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MaterialApp(
      home: Logicclass(),
    ));

class Logicclass extends StatelessWidget {
  Widget build(BuildContext context) {
    return Login();
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email = TextEditingController();
  final password = TextEditingController();
   bool valid=false;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final focus = FocusNode();
  final formkey = new GlobalKey<FormState>();
  validateform(){
    print("Form Validating...");
    if(formkey.currentState.validate()){
      formkey.currentState.save();
      valid=true;
      return valid;
    }
    else
    {
      print("Form validation error");
      valid=false;
      return valid;
    }
  }
  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
    focus.dispose();
    
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
        body: Form(
          key: formkey,
                  child: Container(
            height: 610,
            width: 500,
            // decoration: new BoxDecoration(
            //   gradient: new LinearGradient(colors: [ const Color(0xFF8808cc),const Color(0xFF00ffdd)],
            //   begin: FractionalOffset.topRight,
            //   end:   FractionalOffset.bottomLeft,

            //   tileMode: TileMode.repeated
            //   ),

            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 20),
                  child: Hero(
                    tag: 'Logo',
                    child: FlutterLogo(
                      size: 70,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(hintText: 'Email'),
                    controller: email,
                    validator: (val)=> val.isEmpty ? "Email Empty" : null,
                    onFieldSubmitted: (v) {
                      FocusScope.of(context).requestFocus(focus);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: TextFormField(
                    focusNode: focus,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Password'),
                    controller: password,
                    
                     validator: (val)=> val.isEmpty ? "Password Empty" : val.length<8 ? "Password too short": null,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 24, top: 20),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            "Forgotten Password?",
                            style: TextStyle(color: Colors.blue),
                          ))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 42, top: 20),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                          bool check=  validateform();
                          if (check==false) {
                              
                            } else {
                              createuser();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dashboard()));
                            }

                          },
                          color: Color.fromRGBO(225, 230, 245, 1.0),
                          child: Text('Login'),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          padding: EdgeInsets.only(right: 60, left: 60),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MyApp()));
                          },
                          color: Color.fromRGBO(225, 230, 245, 1.0),
                          child: Text('Register'),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.only(left: 52, right: 52),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20, left: 40, right: 40),
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color.fromRGBO(59, 89, 152, 1),
                      child: Text(
                        "Log in with facebook",
                        style: TextStyle(
                          fontSize: 15.3,
                          color: Colors.white,
                        ),
                      ),
                      padding: EdgeInsets.only(
                          left: 94, right: 94, top: 10, bottom: 10),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          child: Text(
                            'Become a vencus member',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        )))
              ],
            ),
          ),
        ));
  }

  Future<void> createuser() async {
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text, password: password.text);
  }
}
