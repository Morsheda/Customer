import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tf_customer/Before_Login/login.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
              left: 98,
              top: 164,
              child: SvgPicture.asset("assets/Group 12.svg")),
          Positioned(
              left: 124,
              top: 192,
              child: SvgPicture.asset("assets/Group 7.svg")),
          Positioned(
              left: 153.7,
              top: 251.5,
              child: SvgPicture.asset(
                "assets/Group 8.svg",
                height: 54,
                width: 148,
              )),
          Positioned(
              left: 138,
              top: 257,
              child: SvgPicture.asset(
                "assets/Group 9.svg",
                height: 40,
                width: 120,
              )),
          Positioned(
              left: 184,
              top: 81,
              child: SvgPicture.asset("assets/Sandwich_100px.svg")),
          Positioned(
              left: 44.81,
              top: 128.06,
              child: SvgPicture.asset("assets/Kawaii Soda_100px.svg")),
          Positioned(
              left: 297,
              top: 140,
              child: SvgPicture.asset("assets/Salad_100px.svg")),
          Positioned(
              left: 34,
              top: 267,
              child: SvgPicture.asset("assets/Cookie_100px.svg")),
          Positioned(
              left: 332,
              top: 267.02,
              child: SvgPicture.asset("assets/Popcorn_100px.svg")),
          Positioned(
              left: 79,
              top: 505,
              child: SvgPicture.asset("assets/Kawaii Ice Cream_100px.svg")),
          Positioned(
              left: 329,
              top: 530,
              child: SvgPicture.asset(
                "assets/Kawaii Pizza_100px.svg",
              )),
          Positioned(
              left: 29,
              top: 639,
              child: SvgPicture.asset("assets/Steak Hot_100px.svg")),
          Positioned(
              left: 269,
              top: 692,
              child: SvgPicture.asset("assets/Kawaii French Fries_100px.svg")),
          Positioned(
            left: 58,
            top: 389,
            child: Text(
              "Welcome to Tasty Food",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: 118,
            top: 592,
            child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 45),
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 16),
                ),
                elevation: 7.0,
                color: Colors.amber,
                textColor: Colors.black,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                }),
          ),
        ],
      ),
    );
  }
}
