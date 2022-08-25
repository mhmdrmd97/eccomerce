import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCardNamePriceStack extends StatelessWidget {
  const ProductCardNamePriceStack({
    Key? key,
    this.left = 0,
    required this.widthFactor,
    required this.product,
    this.isWishList = false,
  }) : super(key: key);

  final double widthFactor;
  final double left;
  final ProductModel product;
  final bool isWishList;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 65,
      left: left + 5,
      child: Container(
          width: MediaQuery.of(context).size.width / widthFactor - 15 - left,
          height: 80,
          decoration: BoxDecoration(color: Colors.black),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: ProductCardNamePriceColumn(products: product),
                ),
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    if (state is CartLoading)
                      return CircularProgressIndicator();
                    if (state is CartLoaded)
                      return Expanded(
                          child: IconButton(
                        onPressed: () {
                          context.read<CartBloc>().add(AddCartProduct(product));
                        },
                        icon: Icon(Icons.add_circle),
                        color: Colors.white,
                      ));
                    return Text('something went wrong');
                  },
                ),
                isWishList
                    ? Expanded(
                        child: BlocBuilder<WishListBloc, WishListState>(
                            builder: (context, state) {
                          return IconButton(
                            onPressed: () {
                              context
                                  .read<WishListBloc>()
                                  .add(RemoveWishListProduct(product));
                              final snackbar = SnackBar(
                                  content: Text('Removed from your wishlist'));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackbar);
                            },
                            icon: Icon(Icons.delete),
                            color: Colors.white,
                          );
                        }),
                      )
                    : SizedBox(),
              ],
            ),
          )),
    );
  }
}
