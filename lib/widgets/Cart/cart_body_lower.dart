import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class CartBody_Lower extends StatelessWidget {
  const CartBody_Lower({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    Divider(thickness:2),
    Cart_Bottom_Bar(),        
    Total_Bar(),
      ],
    );
  }
}
