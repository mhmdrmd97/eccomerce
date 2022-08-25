import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';


class CartNamePrice extends StatelessWidget {
  const CartNamePrice({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
        Text(product.name, style:Theme.of(context).textTheme.headline5),
        Text('${product.price}', style:Theme.of(context).textTheme.headline6),
      ],),
    );
  }
}
