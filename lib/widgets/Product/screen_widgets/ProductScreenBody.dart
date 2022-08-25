import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';
class ProductScreenBody extends StatelessWidget {
  const ProductScreenBody({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ProductSlider(product: product),
      ProductNamePrice(product: product),
      ProductInfoExpansion(),
      DeliveryInfoExpansion(),
    ]);
  }
}
