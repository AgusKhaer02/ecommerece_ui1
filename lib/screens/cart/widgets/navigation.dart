import 'package:ecommerece_ui1/constants/text_constants.dart';
import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
          ),
          Text(
            "My Cart",
            style: TextConstants.titlePage,
          ),
        ],
      ),
    );
  }
}
