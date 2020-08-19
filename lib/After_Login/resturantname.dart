import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tf_customer/After_Login/menudetails.dart';

class ResturantName extends StatefulWidget {
  @override
  _ResturantNameState createState() => _ResturantNameState();
}

class _ResturantNameState extends State<ResturantName> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    return SafeArea(
      child: DefaultTabController(
        length: 7,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(400),
            child: Stack(
              children: [
                FadeInImage.assetNetwork(
                  width: width,
                  height: 400,
                  placeholder: 'assets/images/blankimage.jpg',
                  image:
                      "https://restaurantengine.com/wp-content/uploads/2015/05/startup-restaurants-typically-overspend.jpg",
                  fadeInCurve: Curves.bounceIn,
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black45,
                ),
                Positioned(
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context, false);
                        })),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Resturant Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                            Icons.star_border,
                            color: Colors.amber,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: width,
                    color: Colors.white,
                    child: TabBar(
                      indicatorColor: Colors.amber,
                      dragStartBehavior: DragStartBehavior.start,
                      isScrollable: true,
                      tabs: [
                        Tab(
                          text: "Popular",
                        ),
                        Tab(
                          text: "Bengali",
                        ),
                        Tab(
                          text: 'Chinesse',
                        ),
                        Tab(
                          text: 'Korean',
                        ),
                        Tab(
                          text: 'Mexican',
                        ),
                        Tab(
                          text: 'Indian',
                        ),
                        Tab(
                          text: 'American',
                        ),
                      ],
                      labelColor: Colors.black,
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusScopeNode());
            },
            child: TabBarView(
              children: [
                Popular(),
                Bengali(),
                Chinesse(),
                Korean(),
                Mexican(),
                Indian(),
                American(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: [
          FoodItems(),
          FoodItems(),
          FoodItems(),
        ],
      ),
    );
  }
}

//Bengali
class Bengali extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: [
          FoodItems(),
          FoodItems(),
          FoodItems(),
          FoodItems(),
          FoodItems(),
        ],
      ),
    );
  }
}

//Chinesse
class Chinesse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: [
          FoodItems(),
          FoodItems(),
        ],
      ),
    );
  }
}

//Korean
class Korean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: [
          FoodItems(),
          FoodItems(),
          FoodItems(),
          FoodItems(),
          FoodItems(),
        ],
      ),
    );
  }
}

//Mexican
class Mexican extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: [
          FoodItems(),
          FoodItems(),
          FoodItems(),
        ],
      ),
    );
  }
}

//Indian
class Indian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: [
          FoodItems(),
          FoodItems(),
          FoodItems(),
          FoodItems(),
          FoodItems(),
        ],
      ),
    );
  }
}

//American
class American extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: [
          FoodItems(),
          FoodItems(),
          FoodItems(),
        ],
      ),
    );
  }
}

class FoodItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MenuDetails(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(right: 10, top: 20),
        height: 200,
        width: 200,
        child: Card(
          elevation: 2,
          child: Stack(
            children: [
              FadeInImage.assetNetwork(
                height: 200,
                width: 200,
                placeholder: 'assets/blank.jpg',
                image:
                    "https://funender.com/wp-content/uploads/2019/01/What-You-Need-to-Know-about-Healthy-Indian-Cuisine.jpeg",
                fadeInCurve: Curves.bounceIn,
                fit: BoxFit.fill,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  width: 200,
                  height: 80,
                  color: Colors.black45,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star_half,
                            size: 15,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Food Name",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "300 TK",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("10% OFF",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
