import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeliveryFeesBar extends StatelessWidget {
  const DeliveryFeesBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
         if (state is CartLoading)
            return Center(child: CircularProgressIndicator());
          if (state is CartLoaded)
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "DeliveryFee's:",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                '\$${state.cart.deliveryFee_string}',
                style: Theme.of(context).textTheme.headline5,
              ),
            ]);
            return Text('something went wrong');
      },
    );
  }
}