import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBottomAppBar extends StatelessWidget {
  final ProductModel product;
  const ProductBottomAppBar({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: Icon(Icons.share),
                  color: Colors.white,
                  onPressed: () {}),
              BlocBuilder<WishListBloc, WishListState>(
                  builder: (context, state) {
                return IconButton(
                    icon: Icon(Icons.favorite),
                    color: Colors.white,
                    onPressed: () {
                      context
                          .read<WishListBloc>()
                          .add(AddWishListProduct(product));
                      final snackbar =
                          SnackBar(content: Text('Added to your wishlist'));
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    });
              }),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        context.read<CartBloc>().add(AddCartProduct(product));
                        Future<void>.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context,'/cart');
                      },
                      child: Text('Add to Cart',
                          style: Theme.of(context).textTheme.headline3));
                },
              ),
            ],
          )),
    );
  }
}
