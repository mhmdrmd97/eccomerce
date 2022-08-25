import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';


class Cart_Bottom_Bar extends StatelessWidget {
  const Cart_Bottom_Bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:40.0,vertical:10.0),
      child: Column(
        children: [
          SubtotalBar(),
          SizedBox(height: 10,),
      DeliveryFeesBar(),
        ],
      ),
    );
  }
}
