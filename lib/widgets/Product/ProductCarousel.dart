import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class ProductsCarousel extends StatelessWidget {
  final List<ProductModel> products;
  const ProductsCarousel({
    Key? key, required this.products
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 165,
        child: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: ProductCard(products: products[index]),
              );
            }));
  }
}
