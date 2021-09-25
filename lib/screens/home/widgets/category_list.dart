import 'package:ecommerece_ui1/constants/color_constants.dart';
import 'package:ecommerece_ui1/data_dummy/category_product.dart';
import 'package:ecommerece_ui1/screens/home/widgets/selected_category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int currentIndex = 0;

  void setCurrentIndex(int index){
    setState(() {
      currentIndex = index;
    });
  }

  Widget categoryItem(int index) {
    return Container(
      margin: (CategoryProduct.categoryMenu.length -1 == index)
          ? EdgeInsets.only(left: 10, right: 10)
          : (index == 0)
              ? EdgeInsets.only(left: 20)
              : EdgeInsets.only(left: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: (currentIndex == index) ? ColorConstants.orange : Colors.grey[200]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            setCurrentIndex(index);
            SelectedCategoryList(selectedCategory: CategoryProduct.categoryMenu[index]["name"]!,);
          },
          child: SvgPicture.asset(
            CategoryProduct.categoryMenu[index]["icon"]!,
            width: 24,
            height: 24,
            color:  (currentIndex == index) ? Colors.white : Colors.grey,
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
        itemCount: CategoryProduct.categoryMenu.length,
        itemBuilder: (context, index) {
          return categoryItem(index);
        },
      ),
    );
  }
}
