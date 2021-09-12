import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerece_ui1/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatefulWidget {
  const CarouselImages({Key? key}) : super(key: key);

  @override
  _CarouselImagesState createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  CarouselController _crslController = CarouselController();
  int carouselIndex = 0;

  List imgProduct = [
    "https://purepng.com/public/uploads/large/apple-watch-pcq.png",
    "https://purepng.com/public/uploads/large/apple-watch-pcq.png",
    "https://purepng.com/public/uploads/large/apple-watch-pcq.png",
    "https://purepng.com/public/uploads/large/apple-watch-pcq.png",
  ];

  List<Widget> carouselDot() {
    List<Widget> dotList = [];

    imgProduct.asMap().forEach((index, element) {
      dotList.add(GestureDetector(
        onTap: () {
          _crslController.animateToPage(index);
        },
        child: Container(
          width: 25,
          height: 30,
          margin: EdgeInsets.symmetric(horizontal: 0.5),
          padding: EdgeInsets.all(5),
          color: Colors.transparent,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (carouselIndex == index)
                    ? ColorConstants.orange
                    : Colors.grey),
            child: SizedBox(),
          ),
        ),
      ));
    });

    return dotList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320,
      decoration: BoxDecoration(
          color: Color(0xF7F7F7F),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(170),
            bottomRight: Radius.circular(170),
          )),
      child: Stack(
        children: [

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: CarouselSlider.builder(
              carouselController: _crslController,
              itemBuilder: (context, itemIndex, pageViewIndex) {
                return Image.network(
                  imgProduct[itemIndex],
                  width: 400,
                  height: 400,
                );
              },
              options: CarouselOptions(
                  height: 400,
                  onPageChanged: (index, _) {
                    setState(() {
                      carouselIndex = index;
                    });
                  }),
              itemCount: imgProduct.length,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...carouselDot(),
                ],
              ),
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black87,
              ),
              iconSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
