import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route({required CategoryModel category}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => CatalogScreen(category: category));
  }

  final CategoryModel category;
  const CatalogScreen({required this.category});
  @override
  Widget build(BuildContext context) {
   final List<ProductModel> categoryProducts = ProductModel.products.where((product) => product.category == category.name).toList();
    return Scaffold(
      appBar: MyAppBar(title: category.name),
      body: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.15,
          ),
          itemCount: categoryProducts.length,
          itemBuilder: (context, index) {
            return ProductCard(products: categoryProducts[index],widthFactor:2.2);
          }),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
