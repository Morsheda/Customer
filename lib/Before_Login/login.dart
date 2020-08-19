import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tf_customer/After_Login/mainscrn.dart';
import 'package:tf_customer/Before_Login/forgot.dart';
import 'package:tf_customer/Before_Login/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 45),
            child: Column(children: <Widget>[
              SizedBox(
                height: 150,
              ),
              Center(
                  child: Text("Log In",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold))),
              SizedBox(
                height: 100.0,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: SvgPicture.asset("assets/Image 6.svg"),
                  suffixIconConstraints: BoxConstraints(),
                  hintText: 'PHONE NUMBER *',
                ),
                onChanged: (value) {},
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: SvgPicture.asset("assets/Image 7.svg"),
                  suffixIconConstraints: BoxConstraints(),
                  hintText: 'PASSWORD *',
                ),
                onChanged: (value) {},
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(children: <Widget>[
                Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Forget()));
                    },
                    child: Text('Forgot Password?',
                        style: TextStyle(
                            color: Colors.blue[600],
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
              ]),
              SizedBox(
                height: 80,
              ),
              RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 90),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  elevation: 7.0,
                  color: Colors.amber,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  }),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Text("Don't have an account?  ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text('Register Now',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue[600],
                            fontSize: 16,
                            fontWeight: FontWeight.bold))),
              ])
            ])),
      ),
    );
  }
}
