import 'package:ecommerece_ui1/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselOffer extends StatelessWidget {
  const CarouselOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorConstants.orange,
            ),
            margin: (index == 4)
                ? EdgeInsets.only(left: 20, right: 20)
                : EdgeInsets.only(
                    left: 20,
                  ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "30% OFF DURING COVID-19",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Get Now",
                          style: GoogleFonts.poppins(
                              color: ColorConstants.orange,
                              fontWeight: FontWeight.w600),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/images/shopping.png",
                  width: 100,
                  height: 100,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
