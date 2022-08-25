import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  const CartScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Cart'),
      body: CartBody(),
      bottomNavigationBar: CartBottomAppBar(),
    );
  }
}
