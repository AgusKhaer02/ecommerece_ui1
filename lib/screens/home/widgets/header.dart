import 'package:ecommerece_ui1/constants/text_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  iconSize: 18,
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.command),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  color: Colors.black,
                  iconSize: 18,
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Rocky",
                style: TextConstants.greeting,
              ),
              Text(
                "Let's get something!",
                style: TextConstants.greetingMsg,
              ),
            ],
          ),
        ],
      ),
    );
  }
}