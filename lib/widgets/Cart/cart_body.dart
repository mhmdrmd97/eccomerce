import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class CartBody extends StatelessWidget {
  const CartBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
          CartBody_Upper(),
          CartBody_Lower(),
        ]),
      ),
    );
  }
}

