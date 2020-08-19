import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tf_customer/Before_Login/verify.dart';

class Forget extends StatefulWidget {
  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
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
                      child: Text("Forgot Password?",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold))),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                      child: Text("Please enter your phone number",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey))),
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
                    height: 100,
                  ),
                  RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 15.0, horizontal: 80),
                      child: Text('Submit',
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
                            MaterialPageRoute(builder: (context) => Verify()));
                      }),
                ]))));
  }
}
