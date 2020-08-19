import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:tf_customer/After_Login/cart.dart';
import 'package:tf_customer/After_Login/menudetails.dart';
import 'package:tf_customer/After_Login/notifications.dart';
import 'package:tf_customer/After_Login/profile.dart';
import 'package:tf_customer/After_Login/resturantname.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile()));
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
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  height: 200,
                  width: 600,
                  child: Swiper(
                    autoplay: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Stack(
                          children: [
                            Image.network(
                              "https://travelandleisureindia.in/wp-content/uploads/2019/12/Indian-But-Not-Indian-Food-feature.jpg",
                              width: 600,
                            ),
                            Center(
                                child: Text(
                              "Populer Items",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ))
                          ],
                        ),
                      );
                    },
                    itemCount: 10,
                    viewportFraction: 1,
                    scale: 0.9,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: Icon(Icons.search), onPressed: () {}),
                  Container(
                    width: 300,
                    child: TextField(
                      decoration:
                          InputDecoration(labelText: 'Search Resturant / Food'),
                    ),
                  ),
                ],
              ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Up To 30% Off",
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
              SizedBox(
                height: 30.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [OfferProduct(), OfferProduct(), OfferProduct()],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended For You",
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
                      ),
                    ),
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
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "All Resturants",
                    style: TextStyle(fontSize: 26),
                  ),
                ),
              ),
              AllResturants(),
              SizedBox(
                height: 20,
              ),
              AllResturants(),
              SizedBox(
                height: 20,
              ),
              AllResturants(),
              SizedBox(
                height: 20,
              ),
              AllResturants(),
              SizedBox(
                height: 20,
              ),
              AllResturants(),
              SizedBox(
                height: 20,
              ),
              AllResturants(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PopularItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    var _width = _screenSize.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MenuDetails(),
            ),
          );
        },
        child: Card(
          elevation: 5,
          child: Stack(
            children: [
              Container(
                width: _width / 1.2,
                height: 280,
              ),
              FadeInImage.assetNetwork(
                width: _width / 1.2,
                height: 180,
                placeholder: 'assets/blank.jpg',
                image:
                    "https://funender.com/wp-content/uploads/2019/01/What-You-Need-to-Know-about-Healthy-Indian-Cuisine.jpeg",
                fadeInCurve: Curves.bounceIn,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: _width / 1.2,
                  height: 100,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Items Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              child: Row(
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
                              ),
                            )
                          ],
                        ),
                        Text("Resturant Name"),
                        Text("500 TK"),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      color: Colors.teal,
                      child: Text(
                        "Free Delivery",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      color: Colors.teal,
                      child: Text(
                        "10% OFF",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OfferProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    var _width = _screenSize.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MenuDetails(),
            ),
          );
        },
        child: Card(
          elevation: 5,
          child: Stack(
            children: [
              Container(
                width: _width / 2.5,
                height: 280,
              ),
              FadeInImage.assetNetwork(
                width: _width / 2.5,
                height: 200,
                placeholder: 'assets/blank.jpg',
                image:
                    "https://funender.com/wp-content/uploads/2019/01/What-You-Need-to-Know-about-Healthy-Indian-Cuisine.jpeg",
                fadeInCurve: Curves.bounceIn,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: _width / 2.5,
                  height: 80,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Food Name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "500 TK.",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "25% OFF",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
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

class AllResturants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    var _width = _screenSize.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResturantName(),
          ),
        );
      },
      child: Card(
        elevation: 5,
        child: Stack(
          children: [
            Container(
              width: _width / 1.1,
              height: 280,
            ),
            FadeInImage.assetNetwork(
              width: _width / 1.1,
              height: 200,
              placeholder: 'assets/blank.jpg',
              image:
                  "https://restaurantengine.com/wp-content/uploads/2015/05/startup-restaurants-typically-overspend.jpg",
              fadeInCurve: Curves.bounceIn,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: _width / 1.1,
                height: 80,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Resturantns Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          Container(
                            child: Row(
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
                            ),
                          )
                        ],
                      ),
                      Expanded(
                          child: Text(
                        "Bengali, Chiness, Indian, Maxican, American, Thai",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      )),
                      Text(
                        "30% OFF",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
