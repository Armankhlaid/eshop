import 'package:flutter/material.dart';
import 'signup.dart';
import 'dashboard.dart';

void main() => runApp(MaterialApp(
      home: Logicclass(),
    ));

class Logicclass extends StatelessWidget {
  Widget build(BuildContext context) {
    return Login();
  }
}
/*
class Theme extends StatelessWidget{
    @override 
    Widget build(BuildContext context){
      return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue
          ),
        home: Login(),
      );
    }

}
*/

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
        body: Container(
          height: 500,
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 20),
                child: Hero(
                  tag: 'Logo',
                  child: FlutterLogo(
                    size: 80,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Email'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text('Forgot Password')),
              ),
              Padding(
                padding: EdgeInsets.only(left: 70, top: 40),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Dashboard()));
                        },
                        color: Color.fromRGBO(255, 100, 40, 1.0),
                        child: Text('Login'),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MyApp()));
                        },
                        color: Color.fromRGBO(255, 100, 40, 1.0),
                        child: Text('Register'),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Become a vencus member',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(50, 50, 255, 1.0))),
                ),
              )
            ],
          ),
        ));
  }
}
