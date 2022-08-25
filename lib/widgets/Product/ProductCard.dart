import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class ProductCard extends StatelessWidget {
  final ProductModel products;
  final double widthFactor;
  final double left;
  final bool isWishList;
  const ProductCard(
      {Key? key, required this.products, this.widthFactor = 2.5, this.left = 0,this.isWishList=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: products);
      },
      child: Stack(children: [
        Container(
            width: MediaQuery.of(context).size.width / widthFactor,
            height: 150,
            child: Image.network(
              products.imgUrl,
              fit: BoxFit.cover,
            )),
        ProductCardBottomDecorationStack(
          widthFactor: widthFactor,
          left: left,
        ),
        ProductCardNamePriceStack(
            widthFactor: widthFactor, product: products, left: left, isWishList: isWishList,),
      ]),
    );
  }
}
