import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';
  final ProductModel product;
  const ProductScreen({Key? key, required this.product}) : super(key: key);

  static Route route({required ProductModel product}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => ProductScreen(product: product));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: product.name),
      body: ProductScreenBody(product: product),
      bottomNavigationBar: ProductBottomAppBar(product: product),
    );
  }
}
