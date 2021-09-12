import 'package:ecommerece_ui1/constants/color_constants.dart';
import 'package:ecommerece_ui1/constants/text_constants.dart';
import 'package:flutter/material.dart';


class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Apple Watch Series 6",
              style: TextConstants.detailProductName),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              ...[1, 2, 3, 4]
                  .map((e) => Icon(
                Icons.star,
                size: 20,
                color: ColorConstants.orange,
              ))
                  .toList(),
              SizedBox(
                width: 10,
              ),
              Text("(4500 Reviews)"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  style: TextConstants.detailProductPrice,
                  children: const <TextSpan>[
                    TextSpan(
                        text: '\$140',
                        style:
                        TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: ' \$200',
                        style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey)),
                  ],
                ),
              ),
              Text(
                "Available in stock",
                style: TextConstants.availableInStock,
              ),
            ],
          )
        ],
      ),
    );
  }
}