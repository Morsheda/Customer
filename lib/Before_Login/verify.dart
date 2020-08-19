import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:tf_customer/Before_Login/login.dart';

class Verify extends StatefulWidget {
  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
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
                      child: Text("Verify Your Mobile",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold))),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                      child: Text("Enter your code here",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey))),
                  SizedBox(
                    height: 100.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    child: PinFieldAutoFill(
                      codeLength: 4,
                      onCodeChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 15.0, horizontal: 80),
                      child: Text('Verify Now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          )),
                      elevation: 7.0,
                      color: Colors.amber,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      }),
                ]))));
  }
}
