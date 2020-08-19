import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tf_customer/After_Login/mainscrn.dart';
import 'package:tf_customer/Before_Login/login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  child: Text("Sign Up",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold))),
              SizedBox(
                height: 12,
              ),
              Center(
                  child: Text("Create your account",
                      style: TextStyle(
                        fontSize: 16.0,
                      ))),
              SizedBox(
                height: 100.0,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: SvgPicture.asset("assets/Image 8.svg"),
                  suffixIconConstraints: BoxConstraints(),
                  hintText: 'USER NAME *',
                ),
                onChanged: (value) {},
              ),
              SizedBox(
                height: 25,
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
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: SvgPicture.asset("assets/Image 15.svg"),
                  suffixIconConstraints: BoxConstraints(),
                  hintText: 'EMAIL *',
                ),
                onChanged: (value) {},
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: SvgPicture.asset(
                    "assets/Image 11.svg",
                  ),
                  suffixIconConstraints: BoxConstraints(),
                  hintText: 'ADDRESS * (set location automatically)',
                ),
                onChanged: (value) {},
              ),
              SizedBox(
                height: 80,
              ),
              RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 90),
                  child: Text(
                    'Register',
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
                SizedBox(
                  width: 40,
                ),
                Text("Agree to ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                TextButton(
                    onPressed: () {},
                    child: Text('terms & conditions',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue[600],
                            fontSize: 16,
                            fontWeight: FontWeight.bold))),
              ]),
              SizedBox(
                height: 15,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text('Log in to your account',
                        style: TextStyle(
                            color: Colors.blue[600],
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
              ),
            ])),
      ),
    );
  }
}
