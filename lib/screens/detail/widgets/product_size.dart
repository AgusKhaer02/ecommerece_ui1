import 'package:ecommerece_ui1/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductSize extends StatelessWidget {
  const ProductSize({
    Key? key,
    required this.sizeIndex,
  }) : super(key: key);

  final int sizeIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: (index == 9)
                ? EdgeInsets.only(left: 10, right: 10)
                : (index == 0)
                ? EdgeInsets.only(left: 20)
                : EdgeInsets.only(left: 10),
            padding: EdgeInsets.all(15),
            decoration: (sizeIndex == index) ? BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFFFCFB7),
            ) : BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12)
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                  onTap: () {
                    // setState(() {
                    //   sizeIndex = index;
                    // });
                  },
                  child: Center(child: Text((35 + index).toString(), style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: (sizeIndex == index) ? ColorConstants.orange : Colors.black87
                  ),))
              ),
            ),
          );
        },
      ),
    );
  }
}