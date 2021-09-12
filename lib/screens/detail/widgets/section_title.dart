import 'package:ecommerece_ui1/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String? actionLabel;
  final VoidCallback? action;

  const SectionTitle({
    Key? key,
    required this.title,
    this.actionLabel,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5 , horizontal: 20),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          (actionLabel != null || action != null)
              ? TextButton(
                  onPressed: action,
                  style: ButtonStyle(),
                  child: Text(
                    actionLabel!.toUpperCase(),
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.orange,
                    ),
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
