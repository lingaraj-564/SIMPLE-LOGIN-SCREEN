import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:login_screen/HomePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();
  final scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.1,
              0.4,
              0.7,
              0.9,
            ],
            colors: [
              Colors.blue[800],
              Colors.blue[600],
              Colors.blue[400],
              Colors.blue[200],
            ],
          ),
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Image.asset(
                "assets/maatram_logo.png",
                height: 50.0,
              ),
              SizedBox(
                height: 50.0,
              ),
              Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        // ignore: missing_return
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please Enter The Username :";
                          }
                        },
                        showCursor: true,
                        cursorColor: Colors.white70,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.account_circle,
                              color: Colors.white,
                            ),
                            hintText: "USERNAME",
                            hintStyle: TextStyle(
                              color: Colors.white70,
                            )),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        // ignore: missing_return
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please Enter The Password :";
                          }
                        },
                        showCursor: true,
                        cursorColor: Colors.white70,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            hintText: "PASSWORD",
                            hintStyle: TextStyle(
                              color: Colors.white70,
                            )),
                      ),
                    ],
                  )),
              SizedBox(
                height: 30.0,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                      0.1,
                      0.4,
                      0.7,
                      2.0,
                    ],
                    colors: [
                      Colors.blue[800],
                      Colors.blue[600],
                      Colors.blue[400],
                      Colors.blue[600],
                    ],
                  ),
                ),
                child: ButtonTheme(
                  height: 50.0,
                  buttonColor: Colors.white10,
                  splashColor: Colors.blueAccent,
                  child: RaisedButton(
                    elevation: 7.0,
                    onPressed: () {
                      if (formkey.currentState.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                        scaffoldkey.currentState.showSnackBar(
                          SnackBar(
                            content: Text(
                              "   Form created successfully...!",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        );
                      } else {
                        scaffoldkey.currentState.showSnackBar(
                          SnackBar(
                            content: Text(
                                "    Invalid user name or password...?",
                                style: TextStyle(color: Colors.red)),
                          ),
                        );
                      }
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Forgot Password ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/google_logo.png",
                    height: 30.0,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Image.asset(
                    "assets/facebook_logo.png",
                    height: 27.0,
                  ),
                ],
              )
            ],
          ),
        ),
        padding: EdgeInsets.all(40.0),
        width: double.infinity,
      ),
    );
  }
}
