import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ecommerceui/constants.dart';
import 'package:ecommerceui/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset("assets/images/icons8-back-arrow-50.png"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset(
            "assets/images/icons8-search-more-30.png",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            "assets/images/icons8-add-to-cart-64.png",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}