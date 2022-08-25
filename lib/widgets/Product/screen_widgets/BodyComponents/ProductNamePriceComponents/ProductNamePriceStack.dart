import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class ProductNamePriceStack extends StatelessWidget {
  const ProductNamePriceStack({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width,
      height: 50,
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(product.name,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white)),
            Text('${product.price}',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
