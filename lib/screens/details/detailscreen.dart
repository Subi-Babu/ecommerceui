import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ecommerceui/constants.dart';
import 'package:ecommerceui/models/Product.dart';
import 'package:ecommerceui/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key ?  key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset(
            "assets/images/icons8-search-more-30.png"),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            "assets/images/icons8-add-to-cart-64.png"),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}