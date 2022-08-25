import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddMoreItems_Bar extends StatelessWidget {
  const AddMoreItems_Bar({
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
                  '${state.cart.toFreeDelivery_string}',
                  style: Theme.of(context).textTheme.headline5,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(),
                      elevation: 0,
                    ),
                    child: Text('Add More Items',
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white)))
              ]);
        return Text('something went wrong');
      },
    );
  }
}
