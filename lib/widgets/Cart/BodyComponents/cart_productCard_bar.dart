import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class Cart_ProductCard_Bar extends StatelessWidget {
  final ProductModel product;
  final int quantity;

  const Cart_ProductCard_Bar({Key? key, required this.product,required this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Row(children: [
        Image.network(product.imgUrl,
            width: 100, height: 80, fit: BoxFit.cover),
        SizedBox(width:10),
        CartNamePrice(product: product),
        SizedBox(width:10),
        CartDecCountInc(product:product, quantity:quantity),
      ]),
    );
  }
}
