import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class CarouselCard extends StatelessWidget {
  final CategoryModel? category;
  final ProductModel? product;
  const CarouselCard({Key? key,  this.category, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if(this.product == null){
        Navigator.pushNamed(context, '/catalog', arguments: category);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(product==null?category!.imgUrl: product!.imgUrl,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width),
                CarauselCardNameStack(product: product, category: category),
              ],
            )),
      ),
    );
  }
}
