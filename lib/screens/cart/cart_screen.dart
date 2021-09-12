import 'package:ecommerece_ui1/constants/color_constants.dart';
import 'package:ecommerece_ui1/screens/cart/widgets/cart_list.dart';
import 'package:ecommerece_ui1/screens/cart/widgets/footer.dart';
import 'package:ecommerece_ui1/screens/cart/widgets/navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Navigation(),
            CartList(),
            Footer()
          ],
        ),
      ),
    );
  }
}


