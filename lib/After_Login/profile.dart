import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tf_customer/After_Login/cart.dart';
import 'package:tf_customer/After_Login/notifications.dart';
import 'package:tf_customer/Before_Login/welcome.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: RichText(
          text: TextSpan(
              text: "Tasty",
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: " Food",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black))
              ]),
        ),
        leading: new IconButton(
          icon: new Icon(
            Icons.clear_all,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cart(),
                ),
              );
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
            icon: SvgPicture.asset(
              "assets/Icon feather-bell.svg",
              color: Colors.black,
              height: 22,
              width: 20,
            ),
          ),
        ],
      ),
      body: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.amber,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 120,
                      width: 120,
                      margin: EdgeInsets.only(top: 30, bottom: 15),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: new AssetImage("assets/person.jpg"),
                          )),
                    ),
                    Text(
                      "HASAN MAHMUD",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                    Text(
                      "+88 018xxxxxxxx",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.0,
                ),
                child: Row(children: <Widget>[
                  Icon(
                    Icons.shop_two_sharp,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "My orders",
                    style: TextStyle(fontSize: 16),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18.0,
              ),
              child: Row(children: <Widget>[
                Icon(
                  Icons.phone_outlined,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "My phone number",
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.edit,
                    color: Colors.grey,
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18.0,
              ),
              child: Row(children: <Widget>[
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "My address",
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.edit,
                    color: Colors.grey,
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context, false);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.0,
                ),
                child: Row(children: <Widget>[
                  Icon(
                    Icons.settings,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(fontSize: 16),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Welcome()));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.0,
                ),
                child: Row(children: <Widget>[
                  Icon(
                    Icons.logout,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Log Out",
                    style: TextStyle(fontSize: 16),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
