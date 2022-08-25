import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class ProductCardNamePriceColumn extends StatelessWidget {
  const ProductCardNamePriceColumn({
    Key? key,
    required this.products,
  }) : super(key: key);

  final ProductModel products;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(ProductModel.products[0].name,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white)),
          Text('\$${products.price}',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white)),
        ]);
  }
}
