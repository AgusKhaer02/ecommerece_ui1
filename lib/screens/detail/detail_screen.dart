import 'package:ecommerece_ui1/constants/color_constants.dart';
import 'package:ecommerece_ui1/constants/text_constants.dart';
import 'package:ecommerece_ui1/screens/detail/widgets/about_product.dart';
import 'package:ecommerece_ui1/screens/detail/widgets/add_to_button.dart';
import 'package:ecommerece_ui1/screens/detail/widgets/carousel_images.dart';
import 'package:ecommerece_ui1/screens/detail/widgets/product_info.dart';
import 'package:ecommerece_ui1/screens/detail/widgets/product_size.dart';
import 'package:ecommerece_ui1/screens/detail/widgets/section_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int sizeIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 7),
            child: Column(
              children: [
                CarouselImages(),
                SizedBox(
                  height: 20,
                ),
                ProductInfo(),
                SizedBox(
                  height: 15,
                ),
                AboutProduct(),

                SizedBox(
                  height: 5,
                ),
                ProductSize(sizeIndex: sizeIndex),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: AddToCartButton(),
    );
  }
}








