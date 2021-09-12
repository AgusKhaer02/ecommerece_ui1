import 'package:ecommerece_ui1/constants/color_constants.dart';
import 'package:ecommerece_ui1/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[100],
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange[100],
            ),
            child: Image.network(
              "https://purepng.com/public/uploads/large/apple-watch-pcq.png",
              width: 70,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Apple Watch Series S",
                  style: TextConstants.productName,
                ),
                Text(
                  "Size : 36",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$140",
                        style: TextConstants.productPrice,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                padding: EdgeInsets.all(5),
                                constraints: BoxConstraints(),
                                onPressed: () {
                                  print("decrease");
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: ColorConstants.orange,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "1",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              IconButton(
                                padding: EdgeInsets.all(5),
                                constraints: BoxConstraints(),
                                onPressed: () {
                                  print("decrease");
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: ColorConstants.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}