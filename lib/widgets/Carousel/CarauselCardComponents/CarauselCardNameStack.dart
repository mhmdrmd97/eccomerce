import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class CarauselCardNameStack extends StatelessWidget {
  const CarauselCardNameStack({
    Key? key,
    required this.product,
    required this.category,
  }) : super(key: key);

  final ProductModel? product;
  final CategoryModel? category;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(200, 0, 0, 0),
              Color.fromARGB(0, 0, 0, 0)
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        padding:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Text(
          product==null?category!.name:'',
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
