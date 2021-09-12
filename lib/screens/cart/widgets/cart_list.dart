import 'package:flutter/material.dart';

import 'cart_item.dart';

class CartList extends StatelessWidget {
  const CartList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CartItem();
        },
      ),
    );
  }
}