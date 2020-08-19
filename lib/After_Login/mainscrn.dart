import 'package:flutter/material.dart';
import 'package:tf_customer/After_Login/cart.dart';
import 'package:tf_customer/After_Login/fav.dart';
import 'package:tf_customer/After_Login/home.dart';

import 'profile.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;
  List<Widget> pages = [];
  Widget currentPage;
  Home homePage;
  Cart orderPage;
  Fav favoritePage;
  Profile profilePage;

  @override
  void initState() {
    super.initState();
    homePage = Home();
    orderPage = Cart();
    favoritePage = Fav();
    profilePage = Profile();
    pages = [homePage, orderPage, favoritePage, profilePage];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) => setState(() {
          currentTabIndex = index;
          currentPage = pages[index];
        }),
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "",
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
