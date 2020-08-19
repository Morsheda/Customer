import 'package:flutter/material.dart';
import 'package:tf_customer/After_Login/cart.dart';

class MenuDetails extends StatefulWidget {
  @override
  _MenuDetailsState createState() => _MenuDetailsState();
}

class _MenuDetailsState extends State<MenuDetails> {
  int amount = 240;
  int itemNumber = 1;
  void _increase() {
    setState(() {
      itemNumber++;
    });
  }

  void _decrease() {
    setState(() {
      if (itemNumber > 1) {
        itemNumber--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    int subtotal = (amount * itemNumber);
    print('Total Amount $subtotal');
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    var width = screenSize.width;
    return SafeArea(
      child: Scaffold(
        appBar: null,
        body: Container(
          child: ListView(
            children: [
              Container(
                height: height / 3,
                width: width,
                child: Stack(
                  children: [
                    FadeInImage.assetNetwork(
                      width: width,
                      height: height,
                      placeholder: 'assets/blank.jpg',
                      image:
                          "https://funender.com/wp-content/uploads/2019/01/What-You-Need-to-Know-about-Healthy-Indian-Cuisine.jpeg",
                      fadeInCurve: Curves.bounceIn,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              color: Colors.white,
                              onPressed: () {
                                //back
                                Navigator.pop(context, false);
                              }),
                          Text(
                            'Menu Details',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Item's name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        "Product Description here. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "$amount TK.",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      "(10% OFF)",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    IconButton(
                                        icon: Icon(Icons.remove_circle),
                                        onPressed: () {
                                          _decrease();
                                        }),
                                    Text(
                                      "$itemNumber",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    IconButton(
                                        icon: Icon(Icons.add_circle),
                                        onPressed: () {
                                          _increase();
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Ingredients:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.donut_small,
                                color: Colors.black,
                              ),
                              Flexible(
                                child: Text(
                                  "Ingredients Name, Ingredients Name,Ingredients Name,Ingredients Name,Ingredients Name,Ingredients Name,",
                                  overflow: TextOverflow.clip,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Seoul The Peri Resturant',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('Category Name'),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.amber,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 60.0,
          color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Subtotal : $subtotal  TK",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.deferToChild,
                  onTap: () {
                    print('Add to cart');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartWithItem(
                          amount: amount,
                          itemNumber: itemNumber,
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        "Add to Cart",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
