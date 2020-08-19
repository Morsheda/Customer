import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tf_customer/After_Login/checkout.dart';
import 'package:tf_customer/After_Login/home.dart';

class Cart extends StatefulWidget {
  Cart({Key key, this.ord}) : super(key: key);
  final bool ord;
  @override
  _CartState createState() => _CartState(this.ord);
}

class _CartState extends State<Cart> {
  bool ord;
  _CartState(this.ord);

  @override
  void initState() {
    ord = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ord ? CartWithItem() : CartWithoutItem();
  }
}

class CartWithItem extends StatefulWidget {
  final int amount, itemNumber;
  CartWithItem({Key key, this.amount, this.itemNumber}) : super(key: key);
  @override
  _CartWithItemState createState() =>
      _CartWithItemState(this.amount, this.itemNumber);
}

class _CartWithItemState extends State<CartWithItem> {
  int amount, itemNumber;
  _CartWithItemState(this.amount, this.itemNumber);

  void _increase() {
    setState(() {
      itemNumber++;
    });
  }

  void _decrease() {
    setState(() {
      if (itemNumber > 0) {
        itemNumber--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    int subtotal = (amount * itemNumber);
    print('Total Amount $subtotal');
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Align(
          alignment: Alignment.center,
          child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.amber,
              onPressed: () {
                Navigator.pop(context, false);
              }),
        ),
        title: Center(
          child: Text(
            'Your Cart',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 5, top: 0, right: 5, bottom: 10),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(2, 2),
                  )
                ]),
                alignment: Alignment.center,
                width: width / 1.1,
                height: 100.0,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          FadeInImage.assetNetwork(
                            width: 100,
                            height: 60,
                            placeholder: 'assets/blank.jpg',
                            image:
                                "https://funender.com/wp-content/uploads/2019/01/What-You-Need-to-Know-about-Healthy-Indian-Cuisine.jpeg",
                            fadeInCurve: Curves.bounceIn,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Product Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              Text(
                                "240 TK",
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Icon(
                              Icons.add,
                              color: Colors.amber,
                            ),
                            onTap: () {
                              _increase();
                            },
                          ),
                          Text(
                            "$itemNumber",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber),
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.remove,
                              color: Colors.amber,
                            ),
                            onTap: () {
                              _decrease();
                              if (itemNumber == 0)
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CartWithoutItem()),
                                );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //summery
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Summary",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
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
                    ],
                  ),
                ),
              ),
              //ajaira popular item
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Most Popular Items",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                    GestureDetector(
                        onTap: () {
                          print("See all");
                        },
                        child: Text(
                          "See all",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [PopularItems(), PopularItems()],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Total ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.amber,
                          child: Text(
                            "$itemNumber",
                            style:
                                TextStyle(fontSize: 10.0, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "$subtotal Tk",
                    ),
                  ],
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
                    hoverColor: Colors.green,
                    color: Colors.amber,
                    child: Text(
                      "CHECKOUT",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckOut(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class CartWithoutItem extends StatefulWidget {
  @override
  _CartWithoutItemState createState() => _CartWithoutItemState();
}

class _CartWithoutItemState extends State<CartWithoutItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Align(
            alignment: Alignment.center,
            child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.amber,
                onPressed: () {
                  //back
                  Navigator.pop(context, false);
                }),
          ),
          title: Center(
            child: Text(
              'YOUR CART',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
        ),
        body: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 150,
                  ),
                  SvgPicture.asset(
                    "assets/empty.svg",
                    height: 180,
                    width: 180,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hungry?',
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "You haven't added anything to your cart!",
                    style: TextStyle(fontSize: 18.0, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'BACK TO THE RESTAURANTS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    textColor: Colors.white,
                    color: Colors.yellow[700],
                  ),
                ],
              ),
            )));
  }
}
