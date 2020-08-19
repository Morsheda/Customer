import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:tf_customer/After_Login/cart.dart';
import 'package:tf_customer/After_Login/deliverystatus.dart';
import 'package:tf_customer/After_Login/home.dart';

class CheckOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Align(
            alignment: Alignment.center,
            child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.black,
                onPressed: () {
                  //back
                  Navigator.pop(context, false);
                }),
          ),
          title: Center(
            child: Text(
              'Check Out',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),

                      ContactInfo(), //Contact Info
                      SizedBox(
                        height: 20.0,
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),

                      PaymentMethod(), // Payment
                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),

                      MessageToRider(), // Contact to Rider
                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),

                      Text(
                        "Message to seller (optional)",
                        style: TextStyle(color: Colors.black26),
                      ), // Contact to Seller
                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      DeliverySystem(),
                      Container(
                        height: MediaQuery.of(context).size.height / 2.5,
                        width: MediaQuery.of(context).size.width,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(bottom: 1, left: 1.0, child: Summary()),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String cName = "Customer Name";
    String cAddress = "Holding No. 32, \n 632 Elephant Road, Dhaka";
    String cNumber = "+880 18xx-xxxxxx";
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.account_circle),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Contact info',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$cName",
              ),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(25),
              //   child: Image.network(
              //     "https://cdn.vox-cdn.com/thumbor/rES5fxTJl-z014NcJV7Rradtxrc=/0x86:706x557/1400x1400/filters:focal(0x86:706x557):format(png)/cdn.vox-cdn.com/imported_assets/847184/stevejobs.png",
              //     cacheHeight: 50,
              //     fit: BoxFit.cover,
              //   ),
              // ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("$cAddress"),
              InkWell(
                autofocus: true,
                child: Text(
                  "CHANGE",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  print('Change address');
                },
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$cNumber'),
              CircleAvatar(
                backgroundColor: Colors.green,
                child: IconButton(
                    icon: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      print('Call Button');
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}

//Payment Method
class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  var bank;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.monetization_on),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Payment method',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            color: Colors.black12,
            child: DropdownButton(
              icon: Icon(Icons.keyboard_arrow_down),
              isExpanded: true,
              dropdownColor: Colors.white,
              hint: Text(
                " Select Payment Method",
              ),
              onChanged: (val) {
                print(val);
                setState(() {
                  this.bank = val;
                });
              },
              value: this.bank,
              autofocus: true,
              elevation: 10,
              items: [
                DropdownMenuItem(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/nagad.png",
                        height: 40,
                        width: 60,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('+880 1812 345678'),
                    ],
                  ),
                  value: 'Nagad',
                ),
                DropdownMenuItem(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/rocket.png',
                        height: 30,
                        width: 50,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('+880 1812 345678')
                    ],
                  ),
                  value: 'Rocket',
                ),
                DropdownMenuItem(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/bkash.png",
                        height: 50,
                        width: 60,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('+880 1812 345678')
                    ],
                  ),
                  value: 'Bkash',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MessageToRider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
            radius: 10,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.email,
              size: 12,
              color: Colors.white,
            )),
        SizedBox(
          width: 10.0,
        ),
        Text(
          'Message To Raider',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class DeliverySystem extends StatefulWidget {
  @override
  _DeliverySystemState createState() => _DeliverySystemState();
}

class _DeliverySystemState extends State<DeliverySystem> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Contact less delivery ?",
                style: TextStyle(fontSize: 20),
              ),
              FlutterSwitch(
                showOnOff: true,
                activeText: "ON",
                activeColor: Colors.green,
                activeTextColor: Colors.black,
                inactiveText: "OFF",
                inactiveTextColor: Colors.white,
                value: status,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
                "Only available in card/ online payment system a alert system for covid19 pandemic situation"),
          ),
        ],
      ),
    );
  }
}

//Summary
class Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black45, blurRadius: 5.0, spreadRadius: 1.0)
        ],
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.5,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Summary",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Subtotal"),
                  Text("758 TK"),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tax"),
                  Text("102 Tk"),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Shipping"),
                  Text("Free"),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discount"),
                  Text("-70 Tk"),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Have a coupn"),
                  GestureDetector(
                      onTap: () {
                        print("Add Cupon");
                      },
                      child: Text(
                        "ADD",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      )),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                color: Colors.black26,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "790 Tk",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              ButtonTheme(
                height: 50.0,
                minWidth: 200.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    color: Colors.amber,
                  ),
                ),
                child: RaisedButton(
                  elevation: 5.0,
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  hoverColor: Colors.green,
                  color: Colors.amber,
                  child: Text(
                    "Place Order",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    var ord = false;
                    print(ord);
                    Cart(
                      ord: ord,
                    );
                    orderConfirmation(context);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

orderConfirmation(context) {
  var screenSize = MediaQuery.of(context).size;
  var height = screenSize.height;
  return showGeneralDialog(
    context: context,
    barrierDismissible: true,
    transitionDuration: Duration(milliseconds: 600),
    barrierLabel: MaterialLocalizations.of(context).dialogLabel,
    barrierColor: Colors.black.withOpacity(0.5),
    pageBuilder: (context, _, __) {
      return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 3.0),
                ],
              ),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        verticalDirection: VerticalDirection.down,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.check_circle,
                              color: Colors.amber, size: height / 5),
                          Text(
                            "Thank you for your order",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "You can track the delivery \n in the 'Orders' Section",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          ButtonTheme(
                            height: 50.0,
                            minWidth: 100.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: Colors.amber,
                              ),
                            ),
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(horizontal: 60),
                              elevation: 5.0,
                              hoverColor: Colors.green,
                              color: Colors.amber,
                              child: Text(
                                "Track Your Order",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Status()),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            },
                            child: Text(
                              "Order Somthing else",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutCirc,
        ).drive(Tween<Offset>(
          begin: Offset(0, 2),
          end: Offset(0, .4),
        )),
        child: child,
      );
    },
  );
}
