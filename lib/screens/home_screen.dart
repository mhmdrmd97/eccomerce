import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Home'),
      body: Column(
        children: [
          CarouselSliderPlayer(),
          SectionTitle(title: 'Recomended'),
          ProductsCarousel(
              products: ProductModel.products
                  .where((product) => product.isRecomended)
                  .toList()),
          SectionTitle(title: 'Most Pupular'),
          ProductsCarousel(
              products: ProductModel.products
                  .where((product) => product.isPopular)
                  .toList()),
        ],
      ),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
