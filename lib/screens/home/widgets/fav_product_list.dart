import 'package:ecommerece_ui1/configs/custom_icons.dart';
import 'package:ecommerece_ui1/screens/detail/detail_screen.dart';
import 'package:flutter/material.dart';

class FavProductList extends StatefulWidget {
  const FavProductList({
    Key? key,
  }) : super(key: key);

  @override
  _FavProductListState createState() => _FavProductListState();
}

class _FavProductListState extends State<FavProductList> {
  final ScrollController _scrollController = ScrollController();

  bool isLiked = false;

  void likeProduct() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  Widget favProductItem(BuildContext context) {
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
                  "https://purepng.com/public/uploads/large/apple-watch-pcq.png",
                  width: 100,
                  height: 100,
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
                      Text("Apple Watch - M2"),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                                text: '\$140',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: ' \$200', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      )
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
    return Container(
      height: 500,
      child: Scrollbar(
        isAlwaysShown: true,
        showTrackOnHover: true,
        controller: _scrollController,
        child: GridView.builder(
            controller: _scrollController,
            itemCount: 20,
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            itemBuilder: (context, index) {
              return favProductItem(context);
            }),
      ),
    );
  }
}
