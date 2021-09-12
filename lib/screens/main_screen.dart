import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ecommerece_ui1/configs/custom_icons.dart';
import 'package:ecommerece_ui1/constants/text_constants.dart';
import 'package:ecommerece_ui1/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  Color activeIndex = Color(0xFFF26B27);
  Color inactiveIndex = Color(0xFFCCCCCC);

  late TabController _tabController;

  int currentIndex = 0;

  List<Widget> listPages = [
    HomeScreen(),
    Center(
      child: Text("Favorite"),
    ),
    Center(
      child: Text("Cart"),
    ),
    Center(
      child: Text("My Account"),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: listPages.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [...listPages],
      ),
      bottomNavigationBar: BottomNavyBar(
        animationDuration: Duration(milliseconds: 100),
        curve: Curves.bounceIn,
        iconSize: 20,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        selectedIndex: currentIndex,
        onItemSelected: (int value) {
          setState(() {
            currentIndex = value;
            _tabController.animateTo(currentIndex,
                duration: Duration(milliseconds: 200), curve: Curves.ease);
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(CustomIcons.home),
            title: Text(
              "Home",
              style: TextConstants.menuLabel,
            ),
            activeColor: activeIndex,
            inactiveColor: inactiveIndex,
          ),
          BottomNavyBarItem(
            icon: Icon(CustomIcons.heart),
            title: Text(
              "Favorite",
              style: TextConstants.menuLabel,
            ),
            activeColor: activeIndex,
            inactiveColor: inactiveIndex,
          ),
          BottomNavyBarItem(
            icon: Icon(CustomIcons.basket),
            title: Text(
              "Cart",
              style: TextConstants.menuLabel,
            ),
            activeColor: activeIndex,
            inactiveColor: inactiveIndex,
          ),
          BottomNavyBarItem(
            icon: Icon(CustomIcons.person),
            title: Text(
              "My Account",
              style: TextConstants.menuLabel,
            ),
            activeColor: activeIndex,
            inactiveColor: inactiveIndex,
          ),
        ],
      ),
    );
  }
}
