import 'package:ecommerece_ui1/configs/custom_icons.dart';
import 'package:ecommerece_ui1/data_dummy/products.dart';
import 'package:ecommerece_ui1/screens/detail/detail_screen.dart';
import 'package:flutter/material.dart';

class SelectedCategoryList extends StatefulWidget {
  final String selectedCategory;

  const SelectedCategoryList({
    Key? key,
    this.selectedCategory = "wristwatch",
  }) : super(key: key);

  @override
  _SelectedCategoryListState createState() => _SelectedCategoryListState();
}

class _SelectedCategoryListState extends State<SelectedCategoryList> {
  final ScrollController _scrollController = ScrollController();
  Iterable<Map<String, dynamic>>? filteredList;

  Future<dynamic>? filterProductsByCategory() async {
    if (Products.products.where((element) =>
            element["product_category"] == widget.selectedCategory) !=
        []) {
      var data = await Products.products.where(
              (element) => element["product_category"] == widget.selectedCategory);
      print("data ada");
      filteredList = data;
      Map<String,dynamic> data1 =  filteredList!.elementAt(1);
      print(data1);
      return filteredList;
    } else {
      print("data kosong");
      // filteredList = "Data Kosong";
      return null;
    }

  }

  bool isLiked = false;

  void likeProduct() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  Widget selectedCategoryItem(
      {required BuildContext context,
      required String image,
      required String name,
      required String price,
      required bool isPromo,
      String? bestPrice}) {

    // print((price == null) ? "from SELECTED CATEGORY ITEM data image kosong": "from SELECTED CATEGORY ITEM" + image);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: Color(0xFFF3F3F3), borderRadius: BorderRadius.circular(20)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailScreen(),
              ),
            );
          },
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 15,
                right: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("30% OFF"),
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    IconButton(
                      onPressed: () {
                        // likeProduct();
                        print("Like this product");
                      },
                      icon: Icon(
                        CustomIcons.heart,
                        color: (isLiked) ? Colors.red : Colors.grey,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 0,
                bottom: 35,
                left: 10,
                right: 10,
                child: Image.network(
                  image, // image
                  width: 80,
                  height: 80,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name), //product name
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        // price
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                                text: '\$$price',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            (isPromo == true)
                                ? TextSpan()
                                : TextSpan(
                                    text: ' \$$bestPrice',
                                    style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ) // price
                    ],
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: filterProductsByCategory(),
      builder: (context, snapshot){
        if(snapshot.hasData && snapshot != []){
          return showList();
        }else if(snapshot.hasError){
          return Center(
            child: Text("no data found"),
          );
        }else{
          return Center(
            child: SizedBox(
              child: CircularProgressIndicator(),
              width: 60,
              height: 60,
            ),
          );
        }
      },
    );
  }

  Container showList() {
    return Container(
      height: 500,
      child: Scrollbar(
        isAlwaysShown: true,
        showTrackOnHover: true,
        controller: _scrollController,
        child: GridView.builder(
            controller: _scrollController,
            itemCount: filteredList!.length,
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            itemBuilder: (context, index) {
              var data = filteredList!.elementAt(index);
              return selectedCategoryItem(
                price: data["product_price"],
                isPromo: data["product_discount"],
                context: context,
                name: data["product_name"],
                image: data["product_image"],
                bestPrice: data["product_best_price"],
              );
            }),
      ),
    );
  }
}
