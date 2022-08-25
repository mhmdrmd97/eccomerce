import 'package:flutter/material.dart';

class ProductCardBottomDecorationStack extends StatelessWidget {
  const ProductCardBottomDecorationStack({
    Key? key,
    this.left = 0,
    required this.widthFactor,
  }) : super(key: key);

  final double widthFactor;
  final double left;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      left: left,
      child: Container(
          width: MediaQuery.of(context).size.width / widthFactor -5 -left,
          height: 80,
          decoration: BoxDecoration(color: Colors.black.withAlpha(50))),
    );
  }
}
