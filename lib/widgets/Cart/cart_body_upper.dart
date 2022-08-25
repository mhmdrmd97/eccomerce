import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBody_Upper extends StatelessWidget {
  const CartBody_Upper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
            if (state is CartLoading)
            return Center(child: CircularProgressIndicator());
          if (state is CartLoaded)
        return Column(
          children: [
            AddMoreItems_Bar(),
            SizedBox(height: 10),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  itemCount: state.cart.productQuantity(state.cart.products).keys.length,
                  itemBuilder: (context, index) {
                    return Cart_ProductCard_Bar(
                        product: state.cart.productQuantity(state.cart.products).keys.elementAt(index),
                        quantity:state.cart.productQuantity(state.cart.products).values.elementAt(index),
                        
                        );
                  }),
            ),
          ],
        );
         return Text('Something went wrong');
      },
    );
  }
}
