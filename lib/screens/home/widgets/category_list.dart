import 'package:ecommerece_ui1/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {

  Widget categoryItem(int index) {
    return Container(
      margin: (index == 9)
          ? EdgeInsets.only(left: 10, right: 10)
          : (index == 0)
          ? EdgeInsets.only(left: 20)
          : EdgeInsets.only(left: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstants.orange),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){

          },
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return categoryItem(index);
        },
      ),
    );
  }
}