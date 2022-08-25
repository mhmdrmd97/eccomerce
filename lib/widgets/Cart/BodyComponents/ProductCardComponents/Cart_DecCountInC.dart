import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartDecCountInc extends StatelessWidget {
  final ProductModel product;
  final int quantity;
  const CartDecCountInc({Key? key, required this.product,required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Row(
          children: [
            IconButton(
                onPressed: () {
                  context.read<CartBloc>().add(RemoveCartProduct(product));
                },
                icon: Icon(Icons.remove_circle)),
            Text(
              '${quantity}',
              style: Theme.of(context).textTheme.headline5,
            ),
            IconButton(
                onPressed: () {
                  context.read<CartBloc>().add(AddCartProduct(product));
                },
                icon: Icon(Icons.add_circle)),
          ],
        );
      },
    );
  }
}
