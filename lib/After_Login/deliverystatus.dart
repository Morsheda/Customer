import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 120, horizontal: 25),
      child: Container(
        //color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, border: Border.all(color: Colors.amber)),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
          child: Column(children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Center(
                child: Text("Delivery Status",
                    style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber))),
            SizedBox(
              height: 70,
            ),
            Row(children: <Widget>[
              Icon(
                Icons.account_circle,
                color: Colors.amber,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Delivery boy name",
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              RaisedButton(
                  child: Text(
                    'Contact',
                    style: TextStyle(),
                  ),
                  elevation: 7.0,
                  color: Colors.amber,
                  textColor: Colors.white,
                  onPressed: () {}),
            ]),
            SizedBox(
              height: 20,
            ),
            Row(children: <Widget>[
              Icon(
                Icons.library_add_check_sharp,
                color: Colors.amber,
                size: 28,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Placed the order",
                style: TextStyle(fontSize: 16, color: Colors.amber),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(children: <Widget>[
              Icon(
                Icons.library_add_check_sharp,
                color: Colors.amber,
                size: 28,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Delivery boy is going to pick order",
                style: TextStyle(fontSize: 16, color: Colors.amber),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(children: <Widget>[
              Icon(
                Icons.library_add_check_outlined,
                color: Colors.black,
                size: 28,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Picked up the order",
                style: TextStyle(fontSize: 16),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(children: <Widget>[
              Icon(
                Icons.library_add_check_outlined,
                color: Colors.black,
                size: 28,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Reached",
                style: TextStyle(fontSize: 16),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(children: <Widget>[
              Icon(
                Icons.library_add_check_outlined,
                color: Colors.black,
                size: 28,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Delivery complete",
                style: TextStyle(fontSize: 16),
              ),
            ]),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
                child: Text(
                  'Back',
                  style: TextStyle(),
                ),
                elevation: 7.0,
                color: Colors.amber,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pop(context, false);
                }),
            SizedBox(
              height: 25,
            ),
          ]),
        ),
      ),
    ));
  }
}
