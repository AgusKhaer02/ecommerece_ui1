import 'package:ecommerece_ui1/constants/text_constants.dart';
import 'package:ecommerece_ui1/screens/detail/widgets/section_title.dart';
import 'package:flutter/material.dart';


class AboutProduct extends StatelessWidget {
  const AboutProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: SectionTitle(
            title: "About",
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Facile est hoc cernere in primis puerorum aetatulis. "
                "Ita prorsus, inquam; Duo Reges: constructio interrete. "
                "Avaritiamne minuis? ",
            style: TextConstants.detailAbout,
          ),
        ),
      ],
    );
  }
}