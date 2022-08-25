import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class ProductNamePrice extends StatelessWidget {
  const ProductNamePrice({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          alignment: Alignment.bottomCenter,
          color: Colors.black.withAlpha(50),
        ),
        ProductNamePriceStack(product: product),
      ]),
    );
  }
}
