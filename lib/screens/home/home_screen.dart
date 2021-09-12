import 'package:ecommerece_ui1/screens/home/widgets/carousel_offer.dart';
import 'package:ecommerece_ui1/screens/home/widgets/category_list.dart';
import 'package:ecommerece_ui1/screens/home/widgets/fav_product_list.dart';
import 'package:ecommerece_ui1/screens/home/widgets/header.dart';
import 'package:ecommerece_ui1/screens/home/widgets/section_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            CarouselOffer(),
            SectionTitle(
              title: 'Top Categories',
              actionLabel: "See All",
              action: () {
                print("See All");
              },
            ),
            CategoryList(),
            SizedBox(
              height: 20,
            ),
            FavProductList(),
          ],
        ),
      ),
    );
  }
}
